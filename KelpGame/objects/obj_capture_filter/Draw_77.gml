/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

var _array_pos = array_length(global.album) - 1;

var album_pos = global.album[_array_pos];


if once = 0 {
album_pos.image = sprite_create_from_surface(application_surface, 0, 0, 1080 * _w_scale, 1080 * _h_scale, false, true, 0, 0);

var _struct = {
		grow: false,
		new_room_val: rm_album,
	}

layer_clear_fx("brightness_contrast")
layer_clear_fx("bloom")
layer_clear_fx("tint")
layer_clear_fx("hue_sat")


instance_create_depth(0,0, depth - 100, obj_room_trans, _struct);
}
once = 1;
