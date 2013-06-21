/*$$$ 
<filter id="scratchesShader" label="Scratches" category="effects" vartype="custom" pixelLocal="false">
	<var varname="color1" label="Color 1" type="coloralpha" default="ff000000" />
	<var varname="angle" label="Angle" type="angle" min="0" max="360" default="0" />
	<var varname="smoothness" label="Smoothness" numFactor="100" type="number" min="0" max="1" default="0.6" />
	<var varname="scale" label="Scale" doesScale="true" numFactor="100" type="number" min="0.25" max="1.5" default="1" />
	<var varname="intensity" label="Intensity" numFactor="100" type="number" min="0" max="1" default="0.5" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_imagesize;
uniform vec2 tt_uniform_surfacesize;
uniform vec2 tt_uniform_pixelsize;

uniform vec4 image_pixeloffsetscale;

uniform vec4 color1;

uniform float angle;
uniform float intensity;
uniform float smoothness;
uniform float scale;

varying vec2 mainTexCoord;

void main()
{
    const float PI = 3.14159265358979323846264338327950288;
	
	float myAngle = PI*angle/180.0;
 
	float sinAngle = sin(myAngle);
	float cosAngle = cos(myAngle);
	
	vec4 dst;

	vec2 coord = mainTexCoord;
	vec2 coord2;
	vec4 col = texture2D( tt_uniform_maintexture, mainTexCoord );

	coord = (mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy)/scale;
	
    coord2.x = coord.x * cosAngle + coord.y * sinAngle;
    coord2.y = coord.x * -sinAngle + coord.y * cosAngle;

	SHIFTCOMPS(col) 

	coord2 -= floor(coord2/512.0) * 512.0;
	
	coord2 /= 512.0;
	
	vec4 col2 = texture2D(tt_uniform_texture1, coord2);
	
	float val = col2.r;
	
	val = smoothstep(1.0 - (smoothness/2.0) - intensity, 1.0 + (smoothness/2.0) - intensity,val);
	
	dst = mix(col,color1,val);
	
	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
	
}

	