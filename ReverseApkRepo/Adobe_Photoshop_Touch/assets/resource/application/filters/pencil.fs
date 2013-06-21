/*$$$ 
<filter id="pencilShader" label="Pencil" category="effects" samplingMode="linear" vartype="custom"
	source1="blur" blurAmount="20.0" source2="charcoalMap" pixelLocal="false">
	<var varname="color1" label="Color 1" type="coloralpha" default="ff000000" />
	<var varname="color2" label="Color 2" type="coloralpha" default="ffffffff" />
	<var varname="strokeSize" label="Stroke Scale" type="number" doesScale="true" numPrecision="2" min="0.5" max="1.5" default="1" />
	<var varname="threshold" label="Threshold" numFactor="100" type="number" min="0" max="1" default="0.5" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;
uniform sampler2D tt_uniform_texture2;

uniform vec2 tt_uniform_imagesize;
uniform vec2 tt_uniform_surfacesize;
uniform vec2 tt_uniform_pixelsize;

uniform vec4 image_pixeloffsetscale;
uniform vec2 image_blursize;

uniform vec4 color1;
uniform vec4 color2;
uniform float threshold;
uniform float strokeSize;

varying vec2 mainTexCoord;

void main()
{
	float pixWidth = tt_uniform_pixelsize.x;
	float pixHeight = tt_uniform_pixelsize.y;
	
	vec2 coord;
	vec4 col = texture2D( tt_uniform_maintexture, mainTexCoord );
	
	vec2 blurCoord = (mainTexCoord*tt_uniform_surfacesize+image_pixeloffsetscale.xy)/image_blursize;;
	
	vec4 blurCol = texture2D(tt_uniform_texture1,blurCoord);
	vec4 col2;
	vec4 val;
	vec4 curCol;
	vec4 strokeCol;
	vec3 bwVect = vec3(0.299,0.587,0.114);
	float strokeIntens;
	float edgeFactor;
	float weight;
	
	float lum = dot(col.rgb,bwVect);
	float dLum = 1.0 - abs(dot(blurCol.rgb,bwVect) - lum);
	
	dLum *= 1.0-lum;
	
	lum = smoothstep(0.5-threshold,1.5-threshold,lum);
	lum += smoothstep(0.45,0.67,dLum*0.56);
	
	col2 = texture2D( tt_uniform_maintexture, mainTexCoord + vec2(pixWidth,0.0));
	val = abs(col2 - col);
	col2 = texture2D( tt_uniform_maintexture, mainTexCoord + vec2(0.0,pixHeight));
	val += abs(col2 - col);
	col2 = texture2D( tt_uniform_maintexture, mainTexCoord + vec2(-pixWidth,0.0));
	val += abs(col2 - col);
	col2 = texture2D( tt_uniform_maintexture, mainTexCoord + vec2(0.0,-pixHeight));
	val += abs(col2 - col);
	
	val *= 2.0;
	
	col2 = texture2D( tt_uniform_maintexture, mainTexCoord + vec2(-pixWidth,-pixHeight));
	val += abs(col2 - col);
	col2 = texture2D( tt_uniform_maintexture, mainTexCoord + vec2(pixWidth,pixHeight));
	val += abs(col2 - col);
	col2 = texture2D( tt_uniform_maintexture, mainTexCoord + vec2(-pixWidth,pixHeight));
	val += abs(col2 - col);
	col2 = texture2D( tt_uniform_maintexture, mainTexCoord + vec2(pixWidth,-pixHeight));
	val += abs(col2 - col);
	
	edgeFactor = (val.r + val.g + val.b)/6.0;
	edgeFactor = smoothstep(0.25+threshold-0.5,0.6+threshold-0.5,edgeFactor);
	
	coord = mainTexCoord*(2.0/strokeSize)*tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	coord *= image_pixeloffsetscale.z;
	
	coord -= floor(coord/256.0) * 256.0;
	coord /= 512.0;
	
	strokeIntens = 1.0;
	
	weight = smoothstep(0.45,0.65,1.0-lum);
	curCol = texture2D( tt_uniform_texture2,coord);
	strokeIntens = ((curCol.b*strokeIntens) - strokeIntens)*weight + strokeIntens;
	
	coord.x += 0.5;
	weight = smoothstep(0.75,0.8,1.0-lum);
	curCol = texture2D( tt_uniform_texture2,coord);
	strokeIntens = ((curCol.b*strokeIntens) - strokeIntens)*weight + strokeIntens;
	
	coord.y += 0.5;
	curCol = texture2D( tt_uniform_texture2,coord);
	curCol.b *= curCol.b*strokeIntens;
	
	strokeIntens = (curCol.b - strokeIntens)*edgeFactor + strokeIntens;
	
	coord.x -= 0.5;
	
	weight = smoothstep(0.45,0.7,1.0-lum);
	curCol = texture2D( tt_uniform_texture2,coord);
	strokeIntens = ((curCol.b*strokeIntens) - strokeIntens)*weight + strokeIntens;
	
	strokeCol = mix(color1,color2,strokeIntens);
	
	SHIFTCOMPS(strokeCol)
	
	gl_FragColor = strokeCol;
	
}
