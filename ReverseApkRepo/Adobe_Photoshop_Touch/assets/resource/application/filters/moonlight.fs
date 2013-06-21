/*$$$ 
<filter id="moonlightShader" label="Moonlight" category="effects" vartype="intensity" source1="blur" blurAmount="20.0" pixelLocal="false">
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="0.76" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_surfacesize;

uniform vec4 image_pixeloffsetscale;
uniform vec2 image_blursize;

uniform float intensity;

varying vec2 mainTexCoord;

void main()
{
    vec4 dst;
 
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
	
	
	vec4 col = texture2D(tt_uniform_maintexture, mainTexCoord.xy);

	vec2 blurCoord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	
	blurCoord /= image_blursize;

	vec4 col2 = texture2D(tt_uniform_texture1, blurCoord);
	
	SHIFTCOMPS(col)
	SHIFTCOMPS(col2)
	
    vec3 bwVect = vec3(0.299,0.587,0.114);
       
    float diffCol = 1.0 - abs(dot(col2.rgb - col.rgb,bwVect));
	vec4 yiqCol = YIQMatrix * col;
	
	yiqCol.y = -0.21;
	yiqCol.z = 0.05;
	
	vec4 rgbaCol = inverseYIQ *yiqCol;
	
    dst.rgb = mix(col.rgb,rgbaCol.rgb,intensity) - vec3(diffCol,diffCol,diffCol)*intensity*0.5;
	dst.a = col.a;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
}
