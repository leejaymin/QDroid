/*$$$ 
<filter id="directionalBlurShader" label="Directional Blur" margin="100" category="effects" samplingMode="linear" pixelLocal="false" vartype="custom"
	source1="noise" noiseWidth="256" noiseHeight="256" noiseBaseX="4.0" noiseBaseY="4.0" noiseOctaves="1">
	<var varname="angle" label="Angle" type="angle" min="0" max="360" default="0" />
	<var varname="blurSize" label="Size" doesScale="true" type="number" min="0" max="100" default="0" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_surfacesize;
uniform vec2 tt_uniform_pixelsize;

uniform vec4 image_pixeloffsetscale;

uniform float angle;
uniform float blurSize;

varying vec2 mainTexCoord;

void main()
{
	const float PI = 3.14159265358979323846264338327950288;

	float rAngle = PI * -angle / 180.0;
	
	vec2 coord = mainTexCoord;
	vec2 curCoord;
	vec4 outCol;
	vec4 noiseCol;
	vec2 rotCoord = coord;
	vec2 jitterCoord;
	
	float jitterSize;
	
	curCoord = coord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	
	curCoord /= image_pixeloffsetscale.z;
	
	curCoord -= floor(curCoord/256.0) * 256.0;
	
	curCoord *= 256.0;
	
	noiseCol = texture2D( tt_uniform_texture1, curCoord );
	
	jitterSize = (noiseCol.r - 0.5);
	
	rotCoord.x = tt_uniform_pixelsize.x*(blurSize * cos(rAngle))/5.0;
	rotCoord.y = tt_uniform_pixelsize.y*(blurSize * -sin(rAngle))/5.0;
	
	jitterCoord = rotCoord*jitterSize;
	
	curCoord = coord;
	outCol = texture2D( tt_uniform_maintexture, curCoord );

	curCoord = coord - rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );

	curCoord = coord + rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );

	curCoord = coord - 2.0*rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );

	curCoord = coord + 2.0*rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );

	curCoord = coord - 3.0*rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );

	curCoord = coord + 3.0*rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );

	curCoord = coord - 4.0*rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );

	curCoord = coord + 4.0*rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );
	
	curCoord = coord - 5.0*rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );
	
	curCoord = coord + 5.0*rotCoord + jitterCoord;
	outCol += texture2D( tt_uniform_maintexture, curCoord );
	
	gl_FragColor = outCol / 11.0;
	
}
