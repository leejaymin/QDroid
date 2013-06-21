/*$$$ 
<filter id="tintShader" label="Tint" category="effects" vartype="custom" >
	<var varname="color1" label="Color 1" type="color" default="65DA62" />	<var varname="luminosity" label="Luminosity" type="number" numFactor="100" min="0" max="1" default="1.0" />
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="1.0" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec3 color1;

uniform float luminosity;
uniform float intensity;
varying vec2 mainTexCoord;

void main()
{
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

	vec4 col;
	vec4 tintCol;
	vec4 simpleTintCol;	vec4 rgbaCol;
	vec4 dst;	
	vec3 bwVect = vec3(0.299,0.587,0.114);	
	tintCol.rgb = color1;
	tintCol.a = 1.0;	
    col = texture2D( tt_uniform_maintexture, mainTexCoord );		SHIFTCOMPS(col)
	
	vec4 yiqCol = YIQMatrix * col;
	vec4 tintyiq = YIQMatrix * tintCol;
	simpleTintCol.rgb = tintCol.rgb*dot(col.rgb,bwVect);
	simpleTintCol.a = col.a;
	
	yiqCol.yz =tintyiq.yz;
	
	rgbaCol = inverseYIQ *yiqCol;
	
	rgbaCol = mix(rgbaCol,simpleTintCol,1.0 - luminosity);
	
	dst = mix(col,rgbaCol,intensity);	
	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
	
}
