/*$$$ 
<filter id="autoFixShader" label="Auto Fix" category="generic" vartype="custom">
	<var varname="amount" label="Amount" type="number" min="0" max="1" default="0" />
	<var varname="minLum" label="MinLum" type="number" min="0" max="1" default="0" />
	<var varname="centerLum" label="CenterLum" type="number" min="0.5" max="2" default="1" />
	<var varname="maxLum" label="MaxLum" type="number" min="0" max="1" default="0" />
	<var varname="maxSat" label="MaxSat" type="number" min="0" max="1" default="0" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform float amount;

uniform float minLum;
uniform float maxLum;
uniform float centerLum;

uniform float maxSat;

varying vec2 mainTexCoord;

void main()
{
     // temporary variables to hold the colors.
    vec4 dst;

     vec4 rgbaColor;
     vec4 yiqaColor;
     
     float satAmount = amount;

     mat4 YIQMatrix = mat4(
         0.299,  0.596,  0.212, 0.000,
         0.587, -0.275, -0.523, 0.000,
         0.114, -0.321,  0.311, 0.000,
         0.000,  0.000,  0.000, 1.000
     );
     
     // get the pixel value at our current location
     rgbaColor = texture2D(tt_uniform_maintexture, mainTexCoord.xy);

	SHIFTCOMPS(rgbaColor)

     yiqaColor = YIQMatrix * rgbaColor;

     mat4 inverseYIQ = mat4(
         1.0,    1.0,    1.0,    0.0,
         0.956, -0.272, -1.10,  0.0,
         0.621, -0.647,  1.70,   0.0,
         0.0,    0.0,    0.0,    1.0
     );

     float value = pow((yiqaColor.x-minLum)/(maxLum-minLum),centerLum);
     float skinFactor = 1.0 - max(rgbaColor.r - (rgbaColor.g+rgbaColor.b)/2.0,0.0);

     satAmount = amount*skinFactor*skinFactor;
     yiqaColor.x = yiqaColor.x*(1.0-amount) + value*amount;
     
   	value = 1.0/maxSat;
     
    yiqaColor.yz = yiqaColor.yz*(1.0-satAmount) + yiqaColor.yz*value*satAmount;
 
     
     // convert back to RGBA and set the output value to the modified color.
     dst = inverseYIQ * yiqaColor;
     
     SHIFTCOMPS(dst)
     
     gl_FragColor.rgb = min(dst.rgb,dst.a);
     gl_FragColor.a = dst.a;
}
