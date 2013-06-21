/*$$$ 
<filter id="paletteShader" label="Aquire" category="generic" vartype="custom">
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

varying vec2 mainTexCoord;

void main()
{
	vec4 rgbaColor;    vec4 dst;
	float weight1,weight2,weight3;
	float black;
	vec4 dotVect = vec4(0.299,0.587,0.114,0.0);
	
   	rgbaColor = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
   	SHIFTCOMPS(rgbaColor)
   	
   	black = (1.0 - dot(rgbaColor,dotVect))*rgbaColor.a;
 
    weight1 = min(0.333,black)*3.0; //smoothstep(0.0,0.334,black);
    weight2 = (max(0.333,min(0.666,black))-0.333)*3.0;//smoothstep(0.334,0.667,black);
    weight3 = (max(0.666,black) - 0.666)*3.0;//smoothstep(0.667,1.0,black);
 
 	dst.r = weight1;
	dst.g = weight2;
	dst.b = weight3;
	
	dst.a = 1.0;
  	SHIFTCOMPS(dst)
	gl_FragColor = dst;
}
