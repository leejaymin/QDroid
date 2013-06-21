/*$$$ 
<filter id="thresholdShader" label="Threshold" category="effects" vartype="custom" >
	<var varname="color1" label="Color 1" type="coloralpha" default="ff000000" />
	<var varname="color2" label="Color 2" type="coloralpha" default="ffffffff" />
	<var varname="threshold" label="Threshold" type="number" numFactor="100" min="0" max="1" default="0.5" />
	<var varname="smoothness" label="Smoothness" type="number" numFactor="100" min="0" max="1" default="0" /></filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec4 color1;
uniform vec4 color2;

uniform float threshold;
uniform float smoothness;
varying vec2 mainTexCoord;

void main()
{
	vec4 dst;

    dst = texture2D( tt_uniform_maintexture, mainTexCoord );

    float lum = (dst.r + dst.g + dst.b)*0.3334;
	
	lum = (lum - (threshold-smoothness*0.5))/smoothness;
	lum = clamp(lum,0.0,1.0);
   	
	dst = mix(color1,color2,lum);

	SHIFTCOMPS(dst)
	
	gl_FragColor = dst;
	
}
