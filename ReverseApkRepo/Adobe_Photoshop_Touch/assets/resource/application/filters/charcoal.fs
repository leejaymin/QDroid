/*$$$ 
<filter id="charcoalShader" label="Charcoal" category="effects" vartype="custom" pixelLocal="false" source1="charcoalMap">
	<var varname="color1" label="Color 1" type="coloralpha" default="ff000000" />
	<var varname="color2" label="Color 2" type="coloralpha" default="ffffffff" />
	<var varname="lightLevel" label="Chalk Amount" numFactor="100" type="number" min="0" max="1" default="0.9" />
	<var varname="darkLevel" label="Charcoal Amount" numFactor="100" type="number" min="0" max="1" default="0.9" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_imagesize;
uniform vec2 tt_uniform_surfacesize;
uniform vec2 tt_uniform_pixelsize;

uniform vec4 image_pixeloffsetscale;

uniform vec4 color1;
uniform vec4 color2;
uniform float lightLevel;
uniform float darkLevel;

varying vec2 mainTexCoord;

void main()
{
        vec4 colWhite = color2;
        vec4 colDark = color1;
        float whiteFactor;
        float darkFactor;
        float greyFactor;
        
        float whiteLum;
        float darkLum;
        
        vec4 outCol;
        
		vec2 coord;
        vec4 col = texture2D( tt_uniform_maintexture, mainTexCoord );

        float lum = (0.299*col.r + 0.587*col.g + 0.114*col.b);
        
        lum = smoothstep(0.0,1.0,lum);
        
  		whiteLum = 0.5 + (1.0-lightLevel)*0.5;
 		darkLum = 0.5 + (1.0-darkLevel)*0.5;
 		
        whiteFactor = smoothstep(whiteLum - 0.05,whiteLum,lum);
        darkFactor = smoothstep(darkLum - 0.05,darkLum,1.0-lum);

      	whiteLum = 1.0 - max(lum - whiteLum,0.0)/(1.0-whiteLum);
        darkLum = 1.0 - max((1.0-lum) - darkLum,0.0)/(1.0-darkLum);        
        
 		coord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;

		coord *= 2.0/image_pixeloffsetscale.z;
		
		coord -= floor(coord/512.0) * 512.0;
		coord /= 512.0;
        
        vec4 col2 = texture2D( tt_uniform_texture1, coord );
        
  
        outCol = mix(color1,color2,0.5);
        
       whiteFactor *= smoothstep(-0.3+whiteLum,0.3+whiteLum,col2.r);
        // whiteFactor += smoothstep(0.0+whiteLum,0.6+whiteLum,col2.r) * (1.0 - whiteFactor);
        
        darkFactor *= smoothstep(-0.3+darkLum,0.3+darkLum,col2.g);
      // darkFactor += smoothstep(0.0+darkLum,0.6+darkLum,col2.g) * (1.0 - darkFactor);
        
        greyFactor = 1.0 - (whiteFactor + darkFactor);
        
        outCol = outCol*greyFactor + colDark*darkFactor + colWhite*whiteFactor;
		
		SHIFTCOMPS(outCol)
	
		gl_FragColor = outCol;
	
}
