/*$$$ 
<filter id="aquireShader" label="Aquire" category="generic" vartype="novars">
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

varying vec2 mainTexCoord;

void main()
{
    // temporary variables to hold the colors.
    vec4 dst;

    vec4 rgbaColor;
    vec4 yiqaColor;
	
    // The language implements matrices in column major order.  This means
    // that mathematically, the transform will look like the following:
    // |Y|   |0.299     0.587   0.114   0.0| |R|
    // |I| = |0.596     -0.275  -0.321  0.0| |G|
    // |Q|   |0.212     -0.523  0.311   0.0| |B|
    // |A|   |0.0       0.0     0.0     1.0| |A|
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


    float value;
    /*
    float value2;
   
    if(yiqaColor.y < 0.0)
        value = -yiqaColor.y/0.798;
    else
        value = yiqaColor.y/0.587;

    if(yiqaColor.z < 0.0)
        value2 = -yiqaColor.z/0.321;
    else
        value2 = yiqaColor.z/0.425;

    if(value2 > value)
        value = value2;
    */
    value = length(yiqaColor.yz)/0.79;
    value = min(value,1.0);
    
    value = sqrt(value);
	
	dst.a = 1.0;
	dst.r = yiqaColor.x;
	dst.g = value;
	dst.b = value;
	
	SHIFTCOMPS(dst)
	
	gl_FragColor = dst;
}
