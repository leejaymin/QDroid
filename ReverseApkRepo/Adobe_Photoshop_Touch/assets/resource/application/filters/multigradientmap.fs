/*$$$ 
<filter id="multiGradientMapShader" label="Gradient Map" category="generic" vartype="custom">
	<var varname="color1" label="Color 1" type="coloralpha" default="ff000000" />
	<var varname="color2" label="Color 2" type="coloralpha" default="ff001966" />
	<var varname="color3" label="Color 3" type="coloralpha" default="ff0099e5" />
	<var varname="color4" label="Color 4" type="coloralpha" default="ffffffff" />
	<var varname="gamma" label="Gamma" type="number" numFactor="100" min="-1" max="1" default="0" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform vec4 color1;
uniform vec4 color2;
uniform vec4 color3;
uniform vec4 color4;
uniform float gamma;

varying vec2 mainTexCoord;

void main()
{
    vec4 dst;

	vec4 col = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	
    float weight1;
    float weight2;
    float weight3;
    float weight4;
    float value1 = sign(max(-gamma,0.0));
    float value2 = step(0.0,gamma);
     
    SHIFTCOMPS(col)
    
    float lum = 0.299*col.r + 0.587*col.g + 0.114*col.b;

    lum = pow(lum,1.0 - gamma)*value1 + pow(lum,1.0/(1.0 + gamma))*value2;
    lum = lum*3.0;
 	
 	value1 = smoothstep(2.0,3.0,lum);
  	value2 = smoothstep(1.0,2.0,lum);
 	
    weight4 = value1;
	weight3 = value2 - value1;
  	value1 = smoothstep(0.0,1.0,lum);
 
    weight2 = value1 - value2;
    weight1 = 1.0 - value1;
      
    dst = col;
    
    dst = color1*weight1 + color2*weight2 + color3*weight3 + color4*weight4;

	SHIFTCOMPS(dst)
	
	gl_FragColor = dst;
}
