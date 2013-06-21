/*$$$ 
<filter id="sleepyHollowShader" label="Old Sepia" category="effects" vartype="intensity" source1="blur" blurAmount="10.0" pixelLocal="false">
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="1" />
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
    vec4 blurCol;
   	vec2 curCoord;
    vec2 blurCoord;
   	 
    vec2 vignetteVec;
    float darkFactor;
    float blurFactor;
    
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
	

	curCoord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	
	vignetteVec = curCoord/tt_uniform_imagesize - 0.5;

	blurCoord = curCoord/image_blursize;
	
	blurCol = texture2D( tt_uniform_texture1, blurCoord );
	
	blurFactor = (blurCol.r + blurCol.g + blurCol.b)/3.0;
	blurFactor = 1.0 - blurFactor;
	blurFactor *= blurFactor;
	blurFactor = 1.0 - blurFactor;
	
	darkFactor = length(vignetteVec);
	
	darkFactor = 1.0 - smoothstep(0.3,1.0,darkFactor);
	darkFactor *= blurFactor;

    rgbaColor = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	SHIFTCOMPS(rgbaColor)

	dst = rgbaColor;

	yiqaColor = YIQMatrix * rgbaColor;
   
    yiqaColor.x = smoothstep(0.0,1.0,yiqaColor.x) * darkFactor;
	yiqaColor.y *= 0.5;
	rgbaColor = inverseYIQ * yiqaColor;
	
    dst.rgb = mix(dst.rgb,rgbaColor.rgb,intensity);
	dst.a = rgbaColor.a;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
}
