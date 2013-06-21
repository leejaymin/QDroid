/*$$$ 
<filter id="aquireMatchColorShader" label="Aquire Color Match" category="generic" vartype="novars">
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

varying vec2 mainTexCoord;

void main()
{
    mat4 YIQMatrix = mat4(
        0.299,  0.5,  0.203, 0.000,
        0.587, -0.231, -0.5, 0.000,
     	0.114, -0.269,  0.297, 0.000,
        0.000,  0.5,  0.5, 1.000
    );

	vec4 src;
	vec4 yiq = vec4(0.0,0.0,0.0,0.0);
	
	float mul;
	
	src = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	if(src.a == 1.0)
	{
		SHIFTCOMPS(src)
		
		src.rgb = log(src.rgb*0.9 + vec3(0.1,0.1,0.1))/log(vec3(10.0,10.0,10.0)) + vec3(1.0,1.0,1.0);
	    
		yiq = YIQMatrix * src;
		
		SHIFTCOMPS(yiq)
	}
	
	gl_FragColor = yiq;
}
