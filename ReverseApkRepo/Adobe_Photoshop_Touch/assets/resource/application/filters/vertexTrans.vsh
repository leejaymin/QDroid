/*$$$ 
<filter id="transformVertexShader" label="vertex" category="none" vartype="novars" />
$$$*/

attribute vec4 tt_attrib_position;
attribute vec4 tt_attrib_texcoords;

uniform mat4 tt_uniform_modelviewprojectionmatrix;

uniform mat3 quadMatrix;

varying vec2 mainTexCoord;

void main()
{
	vec4 resultPos = tt_attrib_position;
	vec3 curPos = tt_attrib_position.xyz;

	curPos.z = 1.0;
	
	curPos = quadMatrix * curPos;
	resultPos.xy = curPos.xy;
	
	gl_Position = tt_uniform_modelviewprojectionmatrix * resultPos;
	
	mainTexCoord = vec2(tt_attrib_texcoords.x, tt_attrib_texcoords.y);
}
