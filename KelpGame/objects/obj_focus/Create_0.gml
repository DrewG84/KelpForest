/// @description Insert description here
// You can write your code in this editor
layers = ["foreground", "fish1", "fish2", "fish3"];

downsamples = array_create(array_length(layers));

fx_structs = array_create(array_length(layers));

for(var i = 0; i < array_length(layers); i += 1) {
	var _fx = fx_create("_effect_recursive_blur");
	fx_set_single_layer(_fx, true);
	
	fx_set_parameter(_fx, "g_RecursiveBlurQuality", 1);
	
	layer_set_fx(layers[i], _fx);
	
	fx_structs[i] =  _fx;
	
	downsamples[i] = 0;
}