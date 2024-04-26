/// @description Insert description here
// You can write your code in this editor


length = array_length(global.album);
main_surface = -1;

var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

var _scale = obj_pan_zoom.scale;

var left = _window_x + (WINDOW_X) * _scale;
var top = _window_y + (82 * _scale);



photo = {
	image: -1,
	scale: _scale,
	species_array: [],
}

layers = ["fish3", "fish2", "fish1", "foreground"];
radius_array = [];
blur_area_id = blur_area_create();

for (var i = 0; i < instance_number(obj_flock_parent); i++) {
	var _instance = instance_find(obj_flock_parent, i);
	
	if _instance.in_cam = true {
		var _fish_struct = {
			name: _instance.name,
			x_pos: _instance.x - left,
			y_pos: _instance.y - top,
		}
		
		array_push(photo.species_array, _fish_struct);
	}
}

for (var i = 0; i < instance_number(obj_stationary); i++) {
	var _instance = instance_find(obj_stationary, i);
	
	if _instance.in_cam = true {
		var _fish_struct = {
			name: _instance.name,
			x_pos: _instance.x - left,
			y_pos: _instance.y - top,
		}
		
		array_push(photo.species_array, _fish_struct);
	}
}
//show_debug_message(string(photo.species_array))


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
//show_debug_message(string(radius_array))

