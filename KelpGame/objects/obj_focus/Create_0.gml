/// @description Insert description here
// You can write your code in this editor
layers = ["fish1", "kelp1", "fish2", "fish3"];

downsamples = array_create(array_length(layers));

fx_structs = array_create(array_length(layers));

for(var i = 0; i < array_length(layers); i += 1) {
	var layer_fx = layer_get_fx(layers[i]);
	fx_structs[i] =  layer_fx;
	fx_set_single_layer(layer_fx, true);
	downsamples[i] = 0;
}