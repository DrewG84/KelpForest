/// @description Insert description here
// You can write your code in this editor

var _surf  = surface_create(room_width, room_height);

surface_set_target(_surf);

for(var i = 0; i < array_length(layers); i += 1) {
	
	var _layer_instances = layer_get_all_elements(layers[i]);
	
	for(var j = 0; j < array_length(_layer_instances); j += 1) {
		var _instance = layer_instance_get_instance(_layer_instances[j]);
		
		with (_instance) {
			event_perform(ev_draw, 0);
		}
	}
	
}

surface_reset_target()

photo.image = sprite_create_from_surface(_surf,0, 0, 916, 916, false, false, 0, 0);