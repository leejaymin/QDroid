/*$$$ 
<filter id="graphicPenShader" label="Graphic Pen" category="effects" vartype="custom"
	source1="noise" noiseWidth="256" noiseHeight="256" noiseBaseX="2.0" noiseBaseY="2.0" noiseOctaves="1" pixelLocal="false">
	<var varname="color1" label="Color 1" type="coloralpha" default="ff000000" />
	<var varname="color2" label="Color 2" type="coloralpha" default="ffffffff" />
	<var varname="direction" label="Angle" type="angle" min="0" max="360" default="45" />
	<var varname="scale" label="Size" doesScale="true" type="number" min="1" max="20" default="15" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

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

	vec2 coord;
	vec2 curCoord;
	lowp vec4 outCol;
	lowp vec4 noiseCol;
    float lum;
    float factor;

    float angle = -direction*PI/180.0;
    float a = sin(angle);
    float b = cos(angle);
	
	coord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	
    curCoord.y = 1.5*(coord.x*a + coord.y*b);    curCoord.x = curCoord.y/2.0 + 1.5*(coord.x*b - coord.y*a)/scale;

	curCoord /= image_pixeloffsetscale.z;
	
	curCoord -= floor(curCoord/256.0) * 256.0;
	
	curCoord /= 256.0;
	
	noiseCol = texture2D( tt_uniform_texture1, curCoord );
	
	outCol = texture2D( tt_uniform_maintexture, mainTexCoord );
	
    lum = (outCol.r + outCol.g + outCol.b)/3.0;
    factor = 1.0 - 2.0*abs(lum-0.5);
 	
    lum = floor(0.5 + (lum + 2.0*factor*(noiseCol.r-0.5)));
	
	outCol = mix(color1,color2,lum);
	
	SHIFTCOMPS(outCol)
	
	gl_FragColor = outCol;
	
}
