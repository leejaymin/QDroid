/*$$$ 
<filter id="sunnyAfternoonShader" label="Old Sepia" category="effects" vartype="intensity" source1="blur" blurAmount="20.0" pixelLocal="false">
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="0.75" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_imagesize;
uniform vec2 tt_uniform_surfacesize;
uniform vec2 tt_uniform_pixelsize;

uniform vec4 image_pixeloffsetscale;
uniform vec2 image_blursize;

uniform float intensity;

varying vec2 mainTexCoord;

void main()
{
    vec4 dst;
    vec4 rgbaColor;
    vec4 yiqaColor;
    vec4 warmRGBColor = vec4(1.0,0.5,0.0,1.0);
    vec4 yiqaTempColor;
    vec4 blurCol;
   	vec2 curCoord;
   	 
    vec2 vignetteVec;
    float darkFactor;
    float blurFactor;
    
    const mat4 myMatrix = mat4(
  		 2.0,-0.25, 0.0, 0.0,
    	-0.5, 1.50, 0.0, 0.0,
    	-0.5,-0.25, 1.0, 0.0,
 		 0.0, 0.00, 0.0, 1.0
    );
    
      const mat4 YIQMatrix = mat4(
        0.299,  0.596,  0.212, 0.000,
        0.587, -0.275, -0.523, 0.000,
        0.114, -0.321,  0.311, 0.000,
        0.000,  0.000,  0.000, 1.000
    );

    const mat4 inverseYIQ = mat4(
        1.0,    1.0,    1.0,    0.0,
        0.956, -0.272, -1.10,  0.0,
        0.621, -0.647,  1.70,   0.0,
        0.0,    0.0,    0.0,    1.0
    );
	
    rgbaColor = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	

	curCoord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	
	vignetteVec = curCoord/tt_uniform_imagesize - 0.5;

	curCoord = curCoord/image_blursize;
	
	blurCol = texture2D( tt_uniform_texture1, curCoord );

	darkFactor = length(vignetteVec);
	darkFactor = 1.0 - smoothstep(0.3,1.0,darkFactor);

	SHIFTCOMPS(rgbaColor)

	dst = rgbaColor;

	rgbaColor.rgb = mix(blurCol.rgb,rgbaColor.rgb,darkFactor);
	rgbaColor *= myMatrix;
	yiqaColor = YIQMatrix * rgbaColor;
   
    yiqaTempColor = YIQMatrix * warmRGBColor;

   	//yiqaColor.x = smoothstep(0.0,1.0,yiqaColor.x) * darkFactor;
    yiqaColor.yz = (yiqaColor.yz + yiqaTempColor.yz)*0.5; 

	rgbaColor = inverseYIQ * yiqaColor;
	blurCol.rgb = smoothstep(0.25,1.0,blurCol.rgb);
	
 	rgbaColor.rgb +=  blurCol.rgb * (1.0 - (rgbaColor.rgb * 0.5));
	
    dst.rgb = mix(dst.rgb,rgbaColor.rgb,intensity);
	dst.a = rgbaColor.a;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
}
