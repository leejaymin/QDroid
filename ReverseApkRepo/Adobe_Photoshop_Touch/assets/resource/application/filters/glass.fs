/*$$$ 
<filter id="glassShader" label="Glass" category="effects" margin="100" samplingMode="linear" vartype="custom"
	source1="noise" noiseWidth="256" noiseHeight="256" noiseBaseX="32.0" noiseBaseY="32.0" noiseOctaves="4" pixelLocal="false">
	<var varname="amount" label="Amount" type="number"  min="0" max="300" default="20" />
	<var varname="scale" label="Scale" doesScale="true" type="number" numPrecision="2" min="0.25" max="4.0" default="1" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_surfacesize;
uniform vec2 tt_uniform_pixelsize;

uniform vec4 image_pixeloffsetscale;

uniform float amount;
uniform float scale;

varying vec2 mainTexCoord;

void main()
{
	vec2 coord;
	vec2 curCoord;
	vec2 pert;
	vec4 curCol;
	vec4 noiseCol;
	float val = scale; 
	
	curCoord = (mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy)/scale;
	curCoord.x -= 1.0;
	
	curCoord -= floor(curCoord/256.0) * 256.0;
	curCoord /= 256.0;
	curCol = texture2D( tt_uniform_texture1, curCoord ); 
	
	curCoord = (mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy)/scale;
	curCoord.x += 1.0;
	curCoord -= floor(curCoord/256.0) * 256.0;
	curCoord /= 256.0;

	noiseCol = texture2D( tt_uniform_texture1, curCoord ); 
	
	pert.x = 2.0*(noiseCol.r - curCol.r);
	
	curCoord = (mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy)/scale;
	curCoord.y -= 1.0;
	curCoord -= floor(curCoord/256.0) * 256.0;
	curCoord /= 256.0;
	
	curCol = texture2D( tt_uniform_texture1, curCoord ); 
	
	curCoord = (mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy)/scale;
	curCoord.y += 1.0;
	curCoord -= floor(curCoord/256.0) * 256.0;
	curCoord /= 256.0;
	
	noiseCol = texture2D( tt_uniform_texture1, curCoord ); 
	
	pert.y = 2.0*(noiseCol.r - curCol.r);
	
	
	coord = mainTexCoord + pert*tt_uniform_pixelsize*amount;
	
	gl_FragColor = texture2D( tt_uniform_maintexture, coord ); 
	
}
