/*$$$ 
<filter id="dodgeBurnShader" label="Dodge & Burn" category="effects" vartype="intensity">
	<var varname="intensity" label="Dodge & Burn" type="number" min="-1" max="1" numFactor="100" default="0.25" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform float intensity;
varying vec2 mainTexCoord;

void main()
{	
	vec4 dst;
	vec4 inputColor;
	float myintense;
	vec3 exp;
	
	inputColor = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
     
	SHIFTCOMPS(inputColor)

		myintense = 1.0 - (intensity / 4.0);
		exp = vec3(myintense);
		
		dst.rgb = pow(inputColor.rgb, exp); 
		dst.a = inputColor.a;

	SHIFTCOMPS(dst)
	
	gl_FragColor = dst;
}
