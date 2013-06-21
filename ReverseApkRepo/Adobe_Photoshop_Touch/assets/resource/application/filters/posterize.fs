/*$$$ 
<filter id="posterizeShader" label="Posterize" category="effects" vartype="custom" >
	<var varname="numColors" label="Colors" type="number" min="1" max="32" default="6" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec4 color1;
uniform vec4 color2;

uniform float numColors;

varying vec2 mainTexCoord;

void main()
{
	vec4 dst;

    dst = texture2D( tt_uniform_maintexture, mainTexCoord );
    dst.rgb = floor(dst.rgb * float(numColors) + 0.5)/float(numColors) + 0.1;

	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
	
}
