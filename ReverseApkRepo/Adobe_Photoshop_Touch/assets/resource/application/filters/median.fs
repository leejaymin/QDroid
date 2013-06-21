/*$$$ 
<filter id="medianShader" label="Median" category="adjustment" vartype="intensity">
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="1" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec2 tt_uniform_pixelsize;

uniform float intensity;

varying vec2 mainTexCoord;

#define s2(a, b) tmp = a; a = min(a, b); b = max(tmp, b);
#define s3(a, b, c) s2(a, b); s2(a, c);
#define s4(a, b, c) s2(b, c); s2(a, c);
#define fs3(a, b, c) s4(a, b, c); s2(a, b);
#define fs4(a, b, c, d)		s2(a, b); s2(c, d); s2(a, c); s2(b, d);
#define fs5(a, b, c, d, e) s2(a, b); s2(c, d); s3(a, c, e); s4(b, d, e);
#define fs6(a, b, c, d, e, f) s2(a, d); s2(b, e); s2(c, f); s3(a, b, c); s4(d, e, f);



void main()
{
	float pixWidth = tt_uniform_pixelsize.x;
	float pixHeight = tt_uniform_pixelsize.y;
		
	vec2 coord = mainTexCoord;
	vec2 curCoord;
	vec4 srcCol;
	lowp vec3 col1,col2,col3,col4,col5,col6,col7,col8,col9;
 	lowp vec3 tmp;

	curCoord.x = coord.x - pixWidth; curCoord.y = coord.y - pixHeight; col1 = texture2D(tt_uniform_maintexture, curCoord.xy).rgb;
	curCoord.x = coord.x; col2 = texture2D(tt_uniform_maintexture, curCoord.xy).rgb;
	curCoord.x = coord.x + pixWidth; col3 = texture2D(tt_uniform_maintexture, curCoord.xy).rgb;
	
	curCoord.x = coord.x - pixWidth; curCoord.y = coord.y; col4 = texture2D(tt_uniform_maintexture, curCoord.xy).rgb;
	curCoord.x = coord.x; srcCol = texture2D(tt_uniform_maintexture, curCoord.xy); col5 = srcCol.rgb;
	curCoord.x = coord.x + pixWidth; col6 = texture2D(tt_uniform_maintexture, curCoord.xy).rgb;
	
	curCoord.x = coord.x - pixWidth; curCoord.y = coord.y + pixHeight; col7 = texture2D(tt_uniform_maintexture, curCoord.xy).rgb;
	curCoord.x = coord.x; col8 = texture2D(tt_uniform_maintexture, curCoord.xy).rgb;
	curCoord.x = coord.x + pixWidth; col9 = texture2D(tt_uniform_maintexture, curCoord.xy).rgb;
	
	fs6(col1, col2, col3, col4, col5, col6);
	fs5(col2, col3, col4, col5, col7);
	fs4(col3, col4, col5, col8);
	fs3(col4, col5, col9);

	gl_FragColor.rgb = mix(srcCol.rgb,col5,intensity);
	gl_FragColor.a = srcCol.a;
}
