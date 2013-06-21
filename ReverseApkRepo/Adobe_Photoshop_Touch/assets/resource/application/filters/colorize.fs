/*$$$ 
<filter id="colorizeShader" label="Tint" category="effects" vartype="custom" >
	<var varname="color1" label="Color 1" type="color" default="AA6600" />
	<var varname="color2" label="Color 2" type="color" default="CCFF00" />
	<var varname="color3" label="Color 3" type="color" default="0044FF" />
	<var varname="luminosity" label="Luminosity" type="number" numFactor="100" min="0" max="1" default="1.0" />
	<var varname="colorMix" label="Mix" type="number" numFactor="100" min="0" max="1" default="0.5" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec3 color1;
uniform vec3 color2;
uniform vec3 color3;

uniform float luminosity;
uniform float colorMix;
varying vec2 mainTexCoord;

void main()
{
      const mat3 YIQMatrix = mat3(
            0.299,  0.596,  0.212,
            0.587, -0.275, -0.523,
            0.114, -0.321,  0.311);

       const mat3 inverseYIQ = mat3(
            1.0,    1.0,    1.0,
            0.956, -0.272, -1.10,
            0.621, -0.647,  1.70);
        
	float realMix = 10.0 + (1.0-colorMix) * 10.0;
	
	vec3 lab1;
	vec3 lab2;
	vec3 lab3;
	vec3 labSrc;
	
	float w1;
	float w2;
	float w3;
	
	vec4 srcCol;
	vec3 dstLab;
	vec4 dst;

    srcCol = texture2D( tt_uniform_maintexture, mainTexCoord );
	
	SHIFTCOMPS(srcCol)
	
	labSrc = YIQMatrix * srcCol.rgb;
	lab1 = YIQMatrix * color1;
	lab2 = YIQMatrix * color2;
	lab3 = YIQMatrix * color3;

	w1 = distance(labSrc.yz,lab1.yz);
	w1 = pow(1.0/(w1*w1 + 1.0),realMix);
	
	w2 = distance(labSrc.yz,lab2.yz);
	w2 = pow(1.0/(w2*w2 + 1.0),realMix);
	
	w3 = distance(labSrc.yz,lab3.yz);
	w3 = pow(1.0/(w3*w3 + 1.0),realMix);
	
	dstLab = (w1*lab1 + w2*lab2 + w3*lab3)/(w1+w2+w3);
	
	dstLab.x = mix(dstLab.x,labSrc.x,0.5+luminosity*0.5);
	
	dst.rgb = inverseYIQ * dstLab;
	dst.a = srcCol.a;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor.rgb = min(dst.rgb,dst.a);
	gl_FragColor.a = dst.a;
	
}
