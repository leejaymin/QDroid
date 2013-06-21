/*$$$ 
<filter id="toneCurveShader" label="Shadow/Hilite" category="adjustment" vartype="custom">
	<var varname="highlights" label="Highlights" type="number" numFactor="100" min="-1" max="1" default="0" />
	<var varname="lights" label="Lights" type="number" numFactor="100" min="-1" max="1" default="0" />
	<var varname="shadows" label="Shadows" type="number" numFactor="100" min="-1" max="1" default="0" />
	<var varname="darks" label="Darks" type="number" numFactor="100" min="-1" max="1" default="0" />
</filter>
$$$*/

precision highp float;

uniform sampler2D tt_uniform_maintexture;

uniform float highlights;
uniform float lights;
uniform float shadows;
uniform float darks;

varying vec2 mainTexCoord;

void main()
{
	vec4 col = texture2D(tt_uniform_maintexture, mainTexCoord.xy);
	vec4 lightValues;
	vec4 paramWeights;
	
	float lum = (col.r + col.g + col.b) / 3.0;
	
	lightValues.x = lum;
	lightValues.y = lum;
	lightValues.z = 1.0 - lum;
	lightValues.w = 1.0 - lum;
	lightValues.xz = (lightValues.xz - 0.25)*1.3333334;
	lightValues.yw = 2.0*(lightValues.yw - 0.5);
	
	/*
	lightValues.x = (lum - 0.25)*1.3333334;
	lightValues.y = 2.0*(lum - 0.5);
	
	lum = 1.0 - lum;
	lightValues.z = (lum - 0.25)*1.3333334;
	lightValues.w = 2.0*(lum - 0.5);
	*/
	
	lightValues = max(lightValues,0.0)*1.5;
	lightValues = (3.0 - 2.0*lightValues)*lightValues*lightValues;
	
	paramWeights.x = lights;
	paramWeights.y = highlights;
	paramWeights.z = shadows;
	paramWeights.w = darks;

	float sum = abs(paramWeights.x) + abs(paramWeights.y) + abs(paramWeights.z) + abs(paramWeights.w) + 1.0;

	col.rgb += dot(lightValues,paramWeights)/sum;

	gl_FragColor.rgb = min(col.rgb,col.a);
	gl_FragColor.a = col.a;
}
