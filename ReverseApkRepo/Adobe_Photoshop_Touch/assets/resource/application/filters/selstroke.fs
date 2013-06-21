/*$$$ 
<filter id="selStrokeShader" label="Size" category="adjustment" vartype="custom" />
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec2 tt_uniform_pixelsize;

varying vec2 mainTexCoord;

void main()
{
	vec2 curCoord;
	lowp vec4 curCol;
	lowp vec4 diffCol;
	
	curCoord.x = mainTexCoord.x - tt_uniform_pixelsize.x;
	curCoord.y = mainTexCoord.y;
	diffCol = texture2D(tt_uniform_maintexture, curCoord);
	
	curCoord.x = mainTexCoord.x + tt_uniform_pixelsize.x;
	curCol = texture2D(tt_uniform_maintexture, curCoord);
	diffCol.r = max(curCol.r,diffCol.r);
	diffCol.g = min(curCol.g,diffCol.g);
		
	curCoord.x = mainTexCoord.x;
	curCoord.y = mainTexCoord.y - tt_uniform_pixelsize.y;
	curCol = texture2D(tt_uniform_maintexture, curCoord);
	diffCol.r = max(curCol.r,diffCol.r);
	diffCol.g = min(curCol.g,diffCol.g);
		
	curCoord.y = mainTexCoord.y + tt_uniform_pixelsize.y;
	curCol = texture2D(tt_uniform_maintexture, curCoord);
	diffCol.r = max(curCol.r,diffCol.r);
	diffCol.g = min(curCol.g,diffCol.g);
	
	diffCol.b = abs(diffCol.r-diffCol.g);
	diffCol.a = 1.0;
	gl_FragColor = diffCol;
}
