/*$$$ 
<filter id="softSkinShader" label="Soft Skin" category="effects" vartype="custom" source1="blur" blurAmount="10.0" pixelLocal="false">
	<var varname="threshold" label="Threshold" type="number" numFactor="100" min="0" max="1" default="0.40" />
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="0.75" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_surfacesize;

uniform vec4 image_pixeloffsetscale;
uniform vec2 image_blursize;

uniform float threshold;
uniform float intensity;

varying vec2 mainTexCoord;

void main()
{
    const mat4 YIQMatrix = mat4(
        0.299,  0.596,  0.212, 0.000,
        0.587, -0.275, -0.523, 0.000,
        0.114, -0.321,  0.311, 0.000,
        0.000,  0.000,  0.000, 1.000
    );

    vec4 dst;

	vec4 col = texture2D(tt_uniform_maintexture, mainTexCoord.xy);

	vec2 blurCoord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	
	blurCoord /= image_blursize;

	vec4 col2 = texture2D(tt_uniform_texture1, blurCoord);

	float factor;
	float dist;
	
	float thres = 1.0 - threshold*0.5;
	
	SHIFTCOMPS(col)
	SHIFTCOMPS(col2)

	dist = distance(col.rgb,col2.rgb);
	dist = 1.0 - smoothstep(0.0,0.5,dist);
	
	vec4 yiqaColor = YIQMatrix * col;
	
    factor = 1.0 - distance(yiqaColor.yz,vec2(0.14,0.1));
    
    factor = smoothstep(0.0+thres,0.15+thres,factor)*dist;
    
    vec3 outCol = mix(col.rgb,col2.rgb,factor);
    
    
    dst.rgb = mix(col.rgb,outCol,intensity);
	dst.a = col.a;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
}
