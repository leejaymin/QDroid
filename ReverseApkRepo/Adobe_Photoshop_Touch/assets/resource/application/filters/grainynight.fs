/*$$$ 
<filter id="grainyNightShader" label="Old Sepia" category="effects" vartype="intensity" source1="dirtMap" pixelLocal="false">
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="0.5" />
	<var varname="brightness" label="Brightness" type="number" numFactor="100" min="0" max="1" default="0.5" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_imagesize;
uniform vec2 tt_uniform_surfacesize;

uniform vec4 image_pixeloffsetscale;

uniform float intensity;
uniform float brightness;

varying vec2 mainTexCoord;

void main()
{
    vec4 dst;
	vec4 rgbaColor;
	vec4 dirtCol;
	vec4 dCol;
	
	vec2 curCoord;
	float gradY;
	
	curCoord = 2.0 * (mainTexCoord * tt_uniform_surfacesize + image_pixeloffsetscale.xy);
	
	gradY = (mainTexCoord.y*tt_uniform_surfacesize.y+image_pixeloffsetscale.y)/tt_uniform_imagesize.y;
	
	curCoord /= image_pixeloffsetscale.z;
	
	curCoord -= floor(curCoord/512.0) * 512.0;

	curCoord /= 512.0;
	
    rgbaColor = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	dirtCol = texture2D( tt_uniform_texture1, curCoord );
	
	float lum = smoothstep(2.0-3.0*brightness,4.0-3.0*brightness,rgbaColor.r + rgbaColor.g + rgbaColor.b);
	
	lum = min(lum,rgbaColor.a);
	
	rgbaColor.rgb = vec3(lum,lum,lum);

	lum = min(lum+max(gradY-0.5,0.0)*0.3334,1.0);
	
	float lum2  = smoothstep(-0.8+dirtCol.r,0.2+dirtCol.r,lum);
	
	dCol = vec4(lum2,lum2,lum2,1.0);
	dst = mix(rgbaColor,dCol,intensity);
	
	gl_FragColor = dst;
}
