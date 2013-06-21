/*$$$ 
<filter id="oldSepiaShader" label="Old Sepia" category="effects" vartype="intensity" source1="dirtMap" pixelLocal="false">
	<var varname="saturation" label="Saturation" type="number" numFactor="100" min="0" max="1" default="0.5" />
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="1" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_imagesize;
uniform vec2 tt_uniform_surfacesize;

uniform vec4 image_pixeloffsetscale;

uniform float intensity;
uniform float saturation;

varying vec2 mainTexCoord;

void main()
{
    vec4 dst;
    vec4 rgbaColor;
    vec4 yiqaColor;
    vec4 warmRGBColor;
    vec4 yiqaTempColor;
    vec4 rgbaTempColor;
    vec4 dirtCol;
   	vec2 curCoord;
   	
   	const vec3 sepiaCol = vec3(0.67,0.48,0.20);
   	
    vec2 vignetteVec;
    float darkFactor;
    
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
	
	warmRGBColor.rgb = sepiaCol*saturation;
	warmRGBColor.a = 1.0;
	
	curCoord = mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy;
	
	vignetteVec = curCoord/tt_uniform_imagesize - 0.5;
	
	curCoord /= image_pixeloffsetscale.z;
	
	curCoord -= floor(curCoord/512.0) * 512.0;
	
	curCoord /= 512.0;
	
	dirtCol = texture2D( tt_uniform_texture1, curCoord );
	
	darkFactor = length(vignetteVec);
	
	darkFactor = 1.0 - smoothstep(0.3,1.0,darkFactor);
	darkFactor *= (1.0 - 0.75*dirtCol.b);

    rgbaColor = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	
	SHIFTCOMPS(rgbaColor)
	
	yiqaColor = YIQMatrix * rgbaColor;
   
    yiqaTempColor = YIQMatrix * warmRGBColor;
  
    yiqaColor.yz = yiqaTempColor.yz; 
    
	rgbaTempColor = inverseYIQ * yiqaColor;
	
 	rgbaTempColor.rgb = mix(vec3(1.0,1.0,1.0),rgbaTempColor.rgb,darkFactor);
 
    dst.xyz = mix(rgbaColor.xyz,rgbaTempColor.xyz,intensity);
    dst.xyz = min(dst.xyz,rgbaColor.w);
	dst.w = rgbaColor.w;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor = dst;
}
