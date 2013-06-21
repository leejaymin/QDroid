/*$$$ 
<filter id="softlightShader" label="Soft Light" category="effects" vartype="intensity" source1="blur" blurPercentAmount="7" pixelLocal="false">
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="0.75" />
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
    const vec3 bwVect = vec3(0.299,0.587,0.114);

    vec4 dst;

	vec4 col = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	
	vec2 blurCoord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	
	blurCoord /= image_blursize;
	
	vec4 col2 = texture2D(tt_uniform_texture1, blurCoord);
	
	SHIFTCOMPS(col)
	SHIFTCOMPS(col2)
	
    vec4 diff = max(col2 - col*0.5,0.0);
    
    float diffLum = dot(diff.rgb,bwVect);
    
    diffLum = smoothstep(0.0,0.5,diffLum);
    
	vec3 outCol = min(col.rgb + diffLum,1.0);

    dst.rgb = mix(col.rgb,outCol,intensity*0.67);
	dst.a = col.a;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
}
