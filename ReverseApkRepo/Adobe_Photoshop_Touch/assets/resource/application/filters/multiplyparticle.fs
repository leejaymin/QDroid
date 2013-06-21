/*$$$ 
<filter id="multiplyParticleShader" label="multiplyParticle" category="effects" vartype="custom" >
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec2 texTessel;
uniform vec2 texIndex;
uniform vec4 tintColor;

varying vec2 mainTexCoord;


void main()
{
	vec4 col;
	vec2 texCoord = (mainTexCoord + texIndex)/texTessel;
	
    col = texture2D( tt_uniform_maintexture, texCoord );
	
	SHIFTCOMPS(col)
	
	col.rgb = tintColor.rgb;
	col.a *= tintColor.a;
	
	SHIFTCOMPS(col)
	
	gl_FragColor = col;
}
