/*$$$ 
<filter id="monitorShader" label="Monitor" category="effects" samplingMode="linear" vartype="intensity" source1="blur" blurAmount="15.0" pixelLocal="false">
	<var varname="intensity" label="Intensity" type="number" numFactor="100" min="0" max="1" default="0.7" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_imagesize;
uniform vec2 tt_uniform_surfacesize;
uniform vec2 tt_uniform_pixelsize;

uniform vec4 image_pixeloffsetscale;
uniform vec2 image_blursize;

uniform float intensity;

varying vec2 mainTexCoord;

void main()
{
    vec4 dst;
    vec4 blurCol;
	vec2 blurCoord;
	
	const float PI2 = 2.0*3.14159265358979323846264338327950288;
	
	vec3 maskR = vec3(1.0,0.0,1.0);
	vec3 maskG = vec3(1.0,0.0,1.0);
	vec3 maskB = vec3(1.0,0.0,1.0);
	
	vec2 vecR = vec2(-6.0*tt_uniform_pixelsize.x,-4.0*tt_uniform_pixelsize.y);
	vec2 vecG = vec2(6.0*tt_uniform_pixelsize.x,8.0*tt_uniform_pixelsize.y);
	vec2 vecB = vec2(8.0*tt_uniform_pixelsize.x,-4.0*tt_uniform_pixelsize.y);
	
	
	vec2 coord = mainTexCoord;
	
	float offset = coord.y*tt_uniform_surfacesize.x + image_pixeloffsetscale.x;
	float offsetX = coord.x*tt_uniform_surfacesize.x + image_pixeloffsetscale.x;
	
    float yMod = mod(offset,2.0) + offsetX;
    float fullIntens = 0.75 + 0.25*(1.0-intensity);
    
    if(mod(yMod,3.0) == 0.0)		maskR.x = 1.0; else maskR.x = fullIntens;
  	if(mod(yMod+1.0,3.0) == 0.0)	maskG.x = 1.0; else maskG.x = fullIntens;
  	if(mod(yMod+2.0,3.0) == 0.0)	maskB.x = 1.0; else maskB.x = fullIntens;

	float factor = mix(1.0,(0.5 + (1.0+sin(mod(offset*1.3,PI2)))/4.0),intensity);
	vec2 center;
	
	center = 0.5*tt_uniform_imagesize/(tt_uniform_surfacesize + image_pixeloffsetscale.xy);
	
	float weight = length(coord-center);
	weight = intensity*smoothstep(0.0,1.0,weight);
	
	blurCoord = (mainTexCoord*tt_uniform_surfacesize+image_pixeloffsetscale.xy)/image_blursize;
	
	blurCol = texture2D( tt_uniform_texture1, blurCoord );

	vec4 colR = texture2D( tt_uniform_maintexture, coord+vecR*weight) * maskR.xyyz;
	vec4 colG = texture2D( tt_uniform_maintexture, coord+vecG*weight) * maskG.yxyz;
	vec4 colB = texture2D( tt_uniform_maintexture, coord+vecB*weight) * maskB.yyxz;
	
	dst = (colR + colG + colB);
	dst.rgb *= factor;

	blurCol.rgb = smoothstep(0.33,1.0,blurCol.rgb)*intensity;
	
 	dst.rgb +=  blurCol.rgb * (1.0 - (dst.rgb * 0.5));

	gl_FragColor = dst;
}
