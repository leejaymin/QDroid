/*$$$ 
<filter id="aquarellShader" label="Aquarell" category="effects" vartype="custom"
	source1="aquarellMap" noiseWidth="512" noiseHeight="512" noiseBaseX="64.0" noiseBaseY="64.0" noiseOctaves="5" pixelLocal="false">
	<var varname="waterAmount" label="Water" numFactor="100" type="number" min="0.0" max="1.0" default="0.5" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;
uniform sampler2D tt_uniform_texture2;

uniform vec2 tt_uniform_imagesize;
uniform vec2 tt_uniform_surfacesize;

uniform vec4 image_pixeloffsetscale;
uniform vec2 lumsize;

uniform float waterAmount;

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
	
	vec4 paletteCol;
	vec2 curCoord;
	vec4 noiseCol;	vec4 outCol;
	vec4 yiqaCol;
	vec3 white = vec3(1.0,1.0,1.0);
	vec2 blurCoord;
	
	curCoord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	curCoord /= image_pixeloffsetscale.z;

	blurCoord = curCoord;
	
	curCoord -= floor(curCoord/512.0) * 512.0;
	
	curCoord /= 512.0;
	
	noiseCol = texture2D( tt_uniform_texture1, curCoord );
	
	blurCoord /= lumsize;

	paletteCol = texture2D(tt_uniform_texture2, blurCoord);
	//paletteCol = texture2D( tt_uniform_texture2, mainTexCoord );
	
	paletteCol.rgb = 1.0 - paletteCol.rgb;
	paletteCol.r = smoothstep(0.5-noiseCol.r*0.3,0.5 + waterAmount*0.5,paletteCol.r) + noiseCol.r*0.2 + (1.0 - smoothstep(0.0,1.0,paletteCol.r)) * 0.5;
	paletteCol.g = smoothstep(0.4-noiseCol.g*0.3,0.5 + waterAmount*0.5,paletteCol.g) + noiseCol.r*0.2 + (1.0 - smoothstep(0.0,1.0,paletteCol.g)) * 0.5;
	paletteCol.b = smoothstep(0.25-noiseCol.b*0.25,0.5 + waterAmount*0.5,paletteCol.b) + noiseCol.r*0.2 + (1.0 - smoothstep(0.0,1.0,paletteCol.b)) * 0.5;
	paletteCol.rgb = 1.0 - min(paletteCol.rgb,1.0);
	
	outCol = texture2D( tt_uniform_maintexture, mainTexCoord );

	SHIFTCOMPS(outCol)
	
	yiqaCol = YIQMatrix * outCol;
    yiqaCol.x = 1.0 -  min((paletteCol.r + paletteCol.g + paletteCol.b)/3.0,1.0);
	yiqaCol.x = pow(yiqaCol.x,1.8);
	yiqaCol.yz *= 0.75;
 	outCol = inverseYIQ * yiqaCol;

 	outCol.a = 1.0;
 	
	SHIFTCOMPS(outCol)
	
	gl_FragColor = outCol;
	
}
