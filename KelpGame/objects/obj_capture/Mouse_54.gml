/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

var _photo = sprite_create_from_surface(application_surface, WINDOW_X * _w_scale, 82 * _h_scale, 916 * _w_scale, 916 * _h_scale, false, false, 0, 0);

var _photo_struct = {
	image: _photo,
};

array_push(global.album, _photo_struct);

//screen_save_part_dialog("test.png", 82 * w_ratio, 82 * h_ratio, 916 * w_ratio, 916 * h_ratio);