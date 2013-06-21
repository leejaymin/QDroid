/*$$$ 
<filter id="hdrLookShader" label="Moonlight" category="effects" vartype="intensity" source1="blur" blurPercentAmount="5" pixelLocal="false">
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
	
    vec4 diff = col2 - 0.5;
    
    float diffLum = dot(diff.rgb,bwVect);
    
	vec3 outCol = (col.rgb - diffLum);
	
	outCol = smoothstep(0.0+intensity*0.125,1.0-intensity*0.125,outCol);
	
    dst.rgb = mix(col.rgb,outCol,intensity*0.67);
	dst.a = col.a;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
}
