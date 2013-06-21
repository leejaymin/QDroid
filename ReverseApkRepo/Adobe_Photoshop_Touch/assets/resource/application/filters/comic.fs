/*$$$ 
<filter id="comicShader" label="Posterize" category="effects" vartype="custom" >
	<var varname="threshold" label="Colors" type="number" min="1" max="30" default="5" />
	<var varname="edgeStrength" label="Edge Strength" type="number" min="1" max="20" default="12" />
	<var varname="edgeLevel" label="Edge Level" type="number" numFactor="100" min="0" max="1" default="0.4" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec2 tt_uniform_pixelsize;

uniform float threshold;
uniform float edgeStrength;
uniform float edgeLevel;

varying vec2 mainTexCoord;

void main()
{
	vec4 dst;

    vec2 coord = mainTexCoord;
    vec4 col = texture2D( tt_uniform_maintexture, coord );
    vec4 checkCol = col;
    
    
   	const mat4 YIQMatrix = mat4(
        0.299,  0.596,  0.212, 0.000,
        0.587, -0.275, -0.523, 0.000,
        0.114, -0.321,  0.311, 0.000,
        0.000,  0.000,  0.000, 1.000
    );
    
    const mat4 inverseYIQ = mat4(
        1.0,    1.0,    1.0,    0.0,
        0.956, -0.272, -1.10,  0.0,
        0.621, -0.647,  1.70,   0.0,
        0.0,    0.0,    0.0,    1.0
    );
    
    SHIFTCOMPS(col)
    
    vec4 yiq = YIQMatrix * col;
    
    yiq[0] = floor(yiq[0] * float(threshold) + 0.5)/float(threshold) + 0.1;
    
    dst = inverseYIQ * yiq;
   
    vec4 col1, col2, col3, col4;
    
    col1 = texture2D( tt_uniform_maintexture, coord + vec2(-tt_uniform_pixelsize.x,0));
    col2 = texture2D( tt_uniform_maintexture, coord + vec2(0,-tt_uniform_pixelsize.y));
    col3 = texture2D( tt_uniform_maintexture, coord + vec2(tt_uniform_pixelsize.x,0));
    col4 = texture2D( tt_uniform_maintexture, coord + vec2(0,tt_uniform_pixelsize.y));
    
    checkCol = (abs(checkCol - col1) + abs(checkCol - col2) + abs(checkCol - col3) + abs(checkCol - col4))/4.0;
        
   float delta = min(edgeStrength *  (checkCol.r + checkCol.g + checkCol.b)/3.0,1.0);
         
    float level = 1.0 - edgeLevel;
    if (delta > level)
    {
        delta = (delta - level) / (1.0 - level);            
        dst = mix(dst, vec4(0.0,0.0,0.0,1.0), delta);
    }

	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
	
}
