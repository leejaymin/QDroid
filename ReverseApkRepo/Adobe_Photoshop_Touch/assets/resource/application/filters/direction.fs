/*$$$ 
<filter id="directionShader" label="Size" category="adjustment" vartype="custom" />
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec2 tt_uniform_pixelsize;

varying vec2 mainTexCoord;

void main()
{
	const float PI = 3.14159265358979323846264338327950288;
	
	vec4 curCol;
	float curVal;
	vec2 gradVect;
	vec4 dotVect = vec4(0.299,0.587,0.114,0.0);
	
	curVal = dot(texture2D(tt_uniform_maintexture,mainTexCoord + vec2(tt_uniform_pixelsize.x,0.0)),dotVect);
	curVal -= dot(texture2D(tt_uniform_maintexture,mainTexCoord + vec2(-tt_uniform_pixelsize.x,0.0)),dotVect);
	
	gradVect.y = -curVal;
	
	curVal = dot(texture2D(tt_uniform_maintexture,mainTexCoord + vec2(0.0,tt_uniform_pixelsize.y)),dotVect);
	curVal -= dot(texture2D(tt_uniform_maintexture,mainTexCoord + vec2(0.0,-tt_uniform_pixelsize.y)),dotVect);
	
	gradVect.x = curVal;
	
	float size = 2.0*sqrt(length(gradVect));
	
	gradVect = normalize(gradVect);
	
	float rot = gradVect.x*1.0 + gradVect.y*0.0;
    rot = max(rot,-1.0);
    rot = min(rot,1.0);
	rot = 0.5*sign(gradVect.y)*acos(rot)/PI + 0.5;

	gl_FragColor = vec4(0.0,size,rot,1.0);
}
