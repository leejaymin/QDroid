/*$$$ 
<filter id="halftoneShader" label="Halftone Pattern" category="effects" vartype="custom" pixelLocal="false">
	<var varname="color1" label="Color 1" type="coloralpha" default="ff000000" />
	<var varname="color2" label="Color 2" type="coloralpha" default="ffffffff" />
	<var varname="scale" label="Scale" doesScale="true" type="number" min="5" max="50" default="15" />
	<var varname="direction" label="Direction" type="angle" min="0" max="360" default="20" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec2 tt_uniform_surfacesize;

uniform vec4 image_pixeloffsetscale;

uniform vec4 color1;
uniform vec4 color2;

uniform float direction;
uniform float scale;

varying vec2 mainTexCoord;

void main()
{
	const float PI = 3.14159265358979323846264338327950288;

	float angle = PI*direction/180.0;
	float offset = scale;
	vec4 dst;
	
	vec2 coord;
	
    vec2 rot;
    vec2 center;
    float pLen = offset/1.414213562373095;
    
    coord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;

    rot.x = coord.x * cos(angle) + coord.y * sin(angle);
    rot.y = coord.x * -sin(angle) + coord.y * cos(angle);
    
    center = floor(0.5 + rot/offset) * offset;
    
    rot.x = center.x * cos(-angle) + center.y * sin(-angle);
    rot.y = center.x * -sin(-angle) + center.y * cos(-angle);
   
    dst = texture2D( tt_uniform_maintexture, mainTexCoord );
    center = coord - rot;
    
    float light = 1.0 - (dst.r + dst.g + dst.b)/3.0;
	light = smoothstep(-0.5+light,0.5+light,length(center)/pLen);
	
	dst = mix(color1,color2,light);
	
	SHIFTCOMPS(dst)
	
	gl_FragColor = dst;
	
}
