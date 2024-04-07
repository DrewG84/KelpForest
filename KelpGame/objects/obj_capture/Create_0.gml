/// @description Insert description here
// You can write your code in this editor
length = array_length(global.album);
main_surface = -1;

photo = {
	image: -1,
	species_array: [],
}

layers = ["fish3", "fish2", "fish1", "foreground"];
radius_array = [];
blur_area_id = blur_area_create();


var blue1 = #385254;
var blue2 = #7FC4AE;
var blue3 = #68B7AA;
blue_array = [blue1, blue2, blue3];

for(var i = 0; i < array_length(layers); i += 1) {
	
	var _fx = layer_get_fx(layers[i]);
	fx_set_parameter(_fx, "g_RecursiveBlurQuality", 50);
	fx_set_parameter(_fx, "g_RecursiveBlurGamma", 1);
	
	var radius = fx_get_parameter(_fx, "g_RecursiveBlurRadius");
	
	array_push(radius_array, radius);
	
	fx_set_parameter(_fx, "g_RecursiveBlurRadius", radius);

}
show_debug_message(string(radius_array))

