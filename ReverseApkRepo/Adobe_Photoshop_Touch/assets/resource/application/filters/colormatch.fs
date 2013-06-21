/*$$$ 
<filter id="matchColorShader" label="Match Color" category="adjustment" vartype="intensity">
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="0.7" />
</filter>
$$$*/
precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform float intensity;

uniform vec3 lumWeights;
uniform vec3 xWeights;
uniform vec3 yWeights;

varying vec2 mainTexCoord;

void main()
{
    mat4 YIQMatrix = mat4(
        0.299,  0.5,  0.203, 0.000,
        0.587, -0.231, -0.5, 0.000,
     	0.114, -0.269,  0.297, 0.000,
        0.000,  0.5,  0.5, 1.000
    );

    mat4 inverseYIQMatrix = mat4(
         1.0,    1.0,    1.0,    0.0,
        1.139, -0.323283, -1.32276,  0.0,
        0.647782, -0.676643,  1.78511,   0.0,
        -0.893391,    0.499963,    -0.231179,    1.0
    );

	vec4 src;
	
	src = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	
	SHIFTCOMPS(src)
	
	vec4 origSrc = src;
	vec4 yiq;
	src.a = 1.0;
	src.rgb = log(src.rgb*0.9 + vec3(0.1,0.1,0.1))/log(vec3(10.0,10.0,10.0)) + vec3(1.0,1.0,1.0);
    
	yiq = YIQMatrix * src;

	yiq.x = (yiq.x*lumWeights.x) + lumWeights.y;
	yiq.y = (yiq.y*xWeights.x) + xWeights.y;
	yiq.z = (yiq.z*yWeights.x) + yWeights.y;
	src = inverseYIQMatrix *yiq;
   	src.rgb = (pow(vec3(10.0,10.0,10.0),src.rgb - vec3(1.0,1.0,1.0)) - vec3(0.1,0.1,0.1))*1.1111112;

	src = mix(origSrc,src,intensity);
	
	SHIFTCOMPS(src)
	
	gl_FragColor.rgb = min(src.rgb,origSrc.a);
	gl_FragColor.a = origSrc.a;
}
