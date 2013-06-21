/*$$$ 
<filter id="thresholdAGALShader" shaderType="agal" label="Threshold" category="effects" vartype="custom" >
	<constant register="0" values="1.0,3.0,0.5,0.0" />
	<var varname="color1" label="Color 1" type="coloralpha" default="ff000000" />
	<var varname="color2" label="Color 2" type="coloralpha" default="ffffffff" />
	<var varname="threshold" label="Threshold" type="number" numFactor="100" min="0" max="1" default="0.5" />
	<var varname="smoothness" label="Smoothness" type="number" numFactor="100" min="0" max="1" default="0" />
</filter>
$$$*/
mov ft0, v0
tex ft1, ft0, fs0 <2d,linear,nomip>
mov ft2.x, ft1.x
add ft2.x, ft2.x, ft1.y
add ft2.x, ft2.x, ft1.z
div ft2.x, ft2.x, fc0.y
sub ft2.x, ft2.x, fc3.x
mov ft2.y, fc4.x
mul ft2.y, ft2.y, fc0.z
add ft2.x, ft2.x, ft2.y
div ft2.x, ft2.x, fc4.x
sat ft2.x, ft2.x
mov ft3, fc2
mov ft4, fc1
mul ft3, ft3, ft2.x
sub ft2.x, fc0.x, ft2.x
mul ft4, ft4, ft2.x
add ft3, ft3, ft4
mov ft2, ft3
