/*$$$ 
<filter id="contrastBrightnessShader" label="Contrast/Brightness" category="adjustment" vartype="custom">
	<var varname="contrast" label="Contrast" type="number" numFactor="100" min="-1" max="1" default="0" />
	<var varname="brightness" label="Brightness" type="number" numFactor="100" min="-1" max="1" default="0" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform float contrast;
uniform float brightness;

varying vec2 mainTexCoord;

void main()
{
    vec4 col = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
    vec4 curCol;

    vec4 dst;
    float negFactor;
    float posFactor;

    negFactor = sign(max(-contrast,0.0));
    posFactor = step(0.0,contrast);

    curCol.rgb = max((col.rgb-0.5)*(1.0+contrast) + 0.5,0.0) * negFactor;
    curCol.rgb += min(col.rgb + (col.rgb-0.5)*contrast,1.0) * posFactor;

    negFactor = sign(max(-brightness,0.0));
    posFactor = step(0.0,brightness);

    dst.rgb = (curCol.rgb * (1.0+brightness)) *negFactor;
    dst.rgb += (curCol.rgb + brightness)*posFactor;

    gl_FragColor.rgb = min(dst.rgb,col.a);
    gl_FragColor.a = col.a;
}
