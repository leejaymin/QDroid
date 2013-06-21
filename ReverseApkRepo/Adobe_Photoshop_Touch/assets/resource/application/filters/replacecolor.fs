/*$$$ 
<filter id="replaceColorShader" label="Replace Color" category="generic" vartype="custom">
	<var varname="sampleColor" label="Sample Color" type="color" default="000000" />
	<var varname="replaceColor" label="Sample Color" type="coloralpha" default="ffff00ff" />
	<var varname="threshold" label="Threshold" type="number" numFactor="100" min="0" max="1" default="0.25" />
	<var varname="intensity" label="Amount" type="number" numFactor="100" min="0" max="1" default="1.0" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec3 sampleColor;
uniform vec4 replaceColor;
uniform float threshold;
uniform float intensity;

varying vec2 mainTexCoord;

void main()
{
     // temporary variables to hold the colors.
    vec4 dst;

	vec4 curColor;
	vec3 cmpIQ;
	vec3 iQ;
	vec3 replaceIQ;

	float replaceY;
	float diffY;
	float dist;
	float tres;
	float factor;
	
	vec3 dotVector = vec3(0.299,0.587,0.114);

     const mat3 YIQMatrix = mat3(
            0.299,  0.596,  0.212,
            0.587, -0.275, -0.523,
            0.114, -0.321,  0.311);

       const mat3 inverseYIQ = mat3(
            1.0,    1.0,    1.0,
            0.956, -0.272, -1.10,
            0.621, -0.647,  1.70);

	curColor = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	
	SHIFTCOMPS(curColor)

	cmpIQ = YIQMatrix * sampleColor.rgb;
	iQ = YIQMatrix *curColor.rgb;
	
	factor = 1.0;
	
	tres = threshold*threshold;

	dst = curColor;
	
	dist = distance(cmpIQ,iQ);
	
	factor = 1.0 - (dist-(tres*0.75))/(tres-(tres*0.75)) * step((tres*0.75),dist);
	factor *= step(dist,tres);
	
	diffY = dot(dotVector,replaceColor.rgb);
	diffY -= dot(dotVector,sampleColor.rgb);
	replaceY = dot(dotVector,curColor.rgb) + diffY;
	
	replaceY = clamp(replaceY,0.0,1.0);
	
	replaceIQ = YIQMatrix * replaceColor.rgb;
	replaceIQ.x = replaceY;
	
	curColor.a = replaceColor.a;
	curColor.rgb = inverseYIQ * replaceIQ;
	curColor.rgb = min(curColor.rgb,vec3(curColor.a,curColor.a,curColor.a));
	
	dst = mix(dst,curColor,factor*intensity);

	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
}
