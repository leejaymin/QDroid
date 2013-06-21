/*$$$ 
<filter id="colorBalanceShader" label="Color Balance" category="adjustment" vartype="custom">
	<var varname="redValue" label="Red" type="number" numFactor="100" min="-1" max="1" default="0" />
	<var varname="greenValue" label="Green" type="number" numFactor="100" min="-1" max="1" default="0" />
	<var varname="blueValue" label="Blue" type="number" numFactor="100" min="-1" max="1" default="0" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform float redValue;
uniform float greenValue;
uniform float blueValue;

varying vec2 mainTexCoord;

void main()
{
     vec4 dst;
     vec4 inputColor;
     
     mat4 myMatrix;
     
     float fr = redValue;
     float dr = -fr/2.0;

     float fg = greenValue;
     float dg = -fg/2.0;

     float fb = blueValue;
     float db = -fb/2.0;

     
     myMatrix[0][0] = 1.0 + fr;
     myMatrix[0][1] = dg;
     myMatrix[0][2] = db;
     myMatrix[0][3] = 0.0;
     
     myMatrix[1][0] = dr;
     myMatrix[1][1] = 1.0 + fg;
     myMatrix[1][2] = db;
     myMatrix[1][3] = 0.0;

     myMatrix[2][0] = dr;
     myMatrix[2][1] = dg;
     myMatrix[2][2] = 1.0 + fb;
     myMatrix[2][3] = 0.0;

     myMatrix[3][0] = 0.0;
     myMatrix[3][1] = 0.0;
     myMatrix[3][2] = 0.0;
     myMatrix[3][3] = 1.0;

     inputColor = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
     
     SHIFTCOMPS(inputColor)

     inputColor = inputColor * myMatrix;
     
     dst.rgb = min(inputColor.rgb,inputColor.a);
     dst.a = inputColor.a;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor = dst;
}
