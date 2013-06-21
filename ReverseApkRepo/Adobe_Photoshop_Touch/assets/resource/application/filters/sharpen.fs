/*$$$ 
<filter id="sharpenShader" label="Sharpen" category="effects" vartype="intensity">
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="0.7" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec2 tt_uniform_pixelsize;

uniform float intensity;

varying vec2 mainTexCoord;

void main()
{
	float pixWidth = tt_uniform_pixelsize.x;
	float pixHeight = tt_uniform_pixelsize.y;

    vec4 dst;

	vec4 curCol;
	vec4 outCol;
	
	vec2 curCoord = mainTexCoord;
	
    curCoord.x = mainTexCoord.x;
    curCoord.y = mainTexCoord.y;
	
    curCol = texture2D( tt_uniform_maintexture, curCoord );
    outCol = 13.0*curCol;
     
    curCoord.x = mainTexCoord.x - pixWidth;
    curCoord.y = mainTexCoord.y;
    
    outCol -= 2.0 *texture2D( tt_uniform_maintexture, curCoord );

    curCoord.x = mainTexCoord.x + pixWidth;
    curCoord.y = mainTexCoord.y;
    outCol -= 2.0 *texture2D( tt_uniform_maintexture, curCoord );

    curCoord.x = mainTexCoord.x;
    curCoord.y = mainTexCoord.y - pixHeight;
    outCol -= 2.0 *texture2D( tt_uniform_maintexture, curCoord );

    curCoord.x = mainTexCoord.x;
    curCoord.y = mainTexCoord.y + pixHeight;
    outCol -= 2.0 *texture2D( tt_uniform_maintexture, curCoord );


    curCoord.x = mainTexCoord.x - pixWidth;
    curCoord.y = mainTexCoord.y - pixHeight;
    
    outCol -= texture2D( tt_uniform_maintexture, curCoord );
    
    curCoord.x = mainTexCoord.x + pixWidth;
    curCoord.y = mainTexCoord.y - pixHeight;
    outCol -= texture2D( tt_uniform_maintexture, curCoord );

    curCoord.x = mainTexCoord.x - pixWidth;
    curCoord.y = mainTexCoord.y + pixHeight;
    outCol -= texture2D( tt_uniform_maintexture, curCoord );

    curCoord.x = mainTexCoord.x + pixWidth;
    curCoord.y = mainTexCoord.y + pixHeight;
    outCol -= texture2D( tt_uniform_maintexture, curCoord );
    
    dst.a = curCol.a;
    dst.rgb = mix(curCol.rgb,outCol.rgb,intensity*0.25);

	gl_FragColor = dst;
}
