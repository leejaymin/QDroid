/*$$$ 
<filter id="genericVertexShader" label="vertex" category="none" vartype="novars" />
$$$*/
attribute vec4 tt_attrib_position;
attribute vec4 tt_attrib_texcoords;

uniform mat4 tt_uniform_modelviewprojectionmatrix;

varying vec2 mainTexCoord;

void main()
{
	gl_Position = tt_uniform_modelviewprojectionmatrix * tt_attrib_position;
	mainTexCoord = vec2(tt_attrib_texcoords.x, tt_attrib_texcoords.y);
}
