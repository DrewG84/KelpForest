/// @description Insert description here
// You can write your code in this editor
length = array_length(global.album);

photo = {
	image: -1,
	species_array: [],
}

layers = ["foreground", "fish1", "fish2", "fish3"];


for(var i = 0; i < array_length(layers); i += 1) {
	
	var _fx = layer_get_fx(layers[i]);
	fx_set_parameter(_fx, "g_RecursiveBlurQuality", 5);

}