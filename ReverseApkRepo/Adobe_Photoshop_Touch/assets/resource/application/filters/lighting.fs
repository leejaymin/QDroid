/*$$$ 
<filter id="lightingShader" label="Lighting" category="effects" vartype="custom" pixelLocal="false">
	<var varname="color1" label="Color 1" type="color" default="FFFFFF" />
	<var varname="spec" label="Specularity" numFactor="100" type="number" min="0.01" max="1.0" default="0.1" />
	<var varname="intensity" label="Intensity" numFactor="100" type="number" min="0" max="2.0" default="1.0" />
	<var varname="bump" label="Bump Intensity" numFactor="100" type="number" min="-1.0" max="1.0" default="0.5" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;
uniform sampler2D tt_uniform_texture1;

uniform vec2 tt_uniform_imagesize;
uniform vec2 tt_uniform_surfacesize;
uniform vec2 tt_uniform_pixelsize;

uniform vec4 image_pixeloffsetscale;

uniform vec3 color1;
uniform float spec;
uniform float intensity;
uniform float bump;

uniform float lightType;
uniform vec3 lightLocation;
uniform vec2 targetLocation;

varying vec2 mainTexCoord;

void main()
{
        vec2 coord;
        vec4 curCol;
        vec4 dst;
        float curVal;
        vec4 dotVect = vec4(0.114,0.587,0.299,0.0);
        vec3 curLight = lightLocation;
        vec3 spotP = vec3(targetLocation.x,targetLocation.y,0.0) - curLight;
        vec3 lightVect;
        vec3 normal;
		float multIntens = min(intensity,1.0);
		float addIntens = max(intensity-1.0,0.0);
		
		coord = tt_uniform_surfacesize *mainTexCoord + image_pixeloffsetscale.xy;
		
        curLight.xy -= coord.xy*step(0.1,lightType);
         
        curLight = normalize(curLight);
        
        lightVect = -curLight;
        
        spotP = normalize(spotP);
        
        curVal = dot(texture2D(tt_uniform_texture1,mainTexCoord + vec2(tt_uniform_pixelsize.x,0.0)),dotVect);
        curVal -= dot(texture2D(tt_uniform_texture1,mainTexCoord + vec2(-tt_uniform_pixelsize.x,0.0)),dotVect);
        
        normal.x = curVal*bump;
        
        curVal = dot(texture2D(tt_uniform_texture1,mainTexCoord + vec2(0.0,tt_uniform_pixelsize.y)),dotVect);
        curVal -= dot(texture2D(tt_uniform_texture1,mainTexCoord + vec2(0.0,-tt_uniform_pixelsize.y)),dotVect);
        
        normal.y = curVal*bump;
        normal.z = 1.0;
        
        normal = normalize(normal);
 
        float intens = max(dot(curLight,normal),0.0);
        
        intens = pow(intens,1.0+spec*50.0);
        
        float spotAngle = dot(spotP,lightVect) + max(2.0-lightType,0.0);
        
        intens *= smoothstep(0.7,0.75,spotAngle);
        
        intens = mix(1.0,intens,multIntens);
        
        curCol = texture2D(tt_uniform_maintexture,mainTexCoord);
        SHIFTCOMPS(curCol)
        
        dst.rgb = mix(curCol.rgb,intens*color1*curCol.rgb,multIntens) + color1*intens*addIntens;
        dst.a = curCol.a;
		
		SHIFTCOMPS(dst)
	
		gl_FragColor.rgb = min(dst.rgb,dst.a);
		gl_FragColor.a = dst.a;	
}

	