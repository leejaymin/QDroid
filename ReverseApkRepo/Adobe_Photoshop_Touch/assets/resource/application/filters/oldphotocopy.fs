/*$$$ 
<filter id="oldPhotoCopyShader" label="Graphic Pen" category="effects" vartype="custom" source1="scratchesMap" pixelLocal="false">
	<var varname="color1" label="Color 1" type="coloralpha" default="ff000000" />
	<var varname="color2" label="Color 2" type="coloralpha" default="ffffffff" />
	<var varname="threshold" label="Threshold" numFactor="100" type="number" min="0" max="1" default="0.5" />
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
uniform float threshold;

varying vec2 mainTexCoord;

void main()
{
	vec2 coord;
	lowp vec4 outCol;
	lowp vec4 noiseCol;
    float lum;
    float factor = threshold*0.5;

	coord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	
	coord /= image_pixeloffsetscale.z;
	
    coord -= floor(coord/512.0) * 512.0;

	coord /= 512.0;
	
	noiseCol = texture2D( tt_uniform_texture1, coord );
	
	outCol = texture2D( tt_uniform_maintexture, mainTexCoord );
	
    lum = (outCol.r + outCol.g + outCol.b)/3.0;
    
    lum = max(lum,factor);
    lum = min(lum,0.2 + factor);
 	
    lum = smoothstep(factor,0.2 + factor,lum);
	lum += noiseCol.b*noiseCol.b*(1.0 - lum);
	
	outCol = mix(color1,color2,lum);
	
	SHIFTCOMPS(outCol)
	
	gl_FragColor = outCol;
	
}
