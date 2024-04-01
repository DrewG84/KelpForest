/// @description Insert description here
// You can write your code in this editor
var _val = obj_focus_slider.val;
var _target = 0;

if _val = 1 {
	for(var i = 0; i < array_length(downsamples); i += 1) {
		downsamples[i] = 0;
	}
} else {
	_target = round(lerp(0, array_length(layers), _val));
	
	for(var i = 0; i < array_length(downsamples); i += 1) {
		downsamples[i] = clamp(abs(i - _target), 0, 80);
	}
}

for(var i = 0; i < array_length(downsamples); i += 1) {
		//if downsamples[i] = 0 {
		//	layer_enable_fx(layer[i], false);	
		//} else {
		//	layer_enable_fx(layer[i], true);
		//	fx_set_parameter(fx_structs[i], "g_Radius", downsamples[i]);
		//}
		fx_set_parameter(fx_structs[i], "g_RecursiveBlurRadius", downsamples[i]);
	}
	
	
show_debug_message(string(downsamples));