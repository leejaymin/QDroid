/*$$$ 
<filter id="brushShapeShader" label="Brush Shape" category="effects" vartype="custom" >
	<var varname="bitmapSize" label="Bitmap Size" type="number" min="1" max="600" default="256" />
	<var varname="radius" label="Radius" type="number" min="1" max="600" default="127" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec2 tt_uniform_surfacesize;

uniform float bitmapSize;
uniform float radius;

varying vec2 mainTexCoord;

void main()
{
	const float PI = 3.14159265358979323846264338327950288;

	vec4 dst;
	vec4 outCol = vec4(1.0,1.0,1.0,1.0);
	vec2 position;
	vec2 center;
	float intensity;
	
	position.x = mainTexCoord.x*tt_uniform_surfacesize.x;
	position.y = mainTexCoord.y*tt_uniform_surfacesize.y;
	
	center.x = bitmapSize/2.0;
	center.y = bitmapSize/2.0;
	
	position -= center;
	
	intensity = 3.0*length(position)/radius;
	intensity = 1.0/(intensity*intensity + 1.0);
	intensity = max(intensity-0.1,0.0);
	
	//intensity = PI*length(position)/(2.0*radius);
	//intensity = max(cos(intensity),0.0);
	//intensity *= intensity;
	
	gl_FragColor = outCol * intensity;
	
}
