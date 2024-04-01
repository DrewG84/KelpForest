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
	//show_debug_message(string(_target))
	
	for(var i = 0; i < array_length(downsamples); i += 1) {
		downsamples[i] = lerp(0, 15, abs(_target - i) / array_length(downsamples));
	}
	
}

for(var i = 0; i < array_length(downsamples); i += 1) {
	//show_debug_message(string(fx_get_single_layer(fx_structs[i])))
		if downsamples[i] = 0 {
			layer_enable_fx(layers[i], false);
			//show_debug_message(string(layers[i]) + " " + string(layer_fx_is_enabled(layers[i])));
		} else {
			layer_enable_fx(layers[i], true);
			
			fx_set_parameter(fx_structs[i], "g_RecursiveBlurRadius", downsamples[i]);
		}
		//fx_set_parameter(fx_structs[i], "g_numDownsamples", downsamples[i]);
	}
	
	
//show_debug_message(string(downsamples));