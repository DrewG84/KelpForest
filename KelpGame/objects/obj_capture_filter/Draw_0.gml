/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

var _array_pos = array_length(global.album) - 1;

var album_pos = global.album[_array_pos];

var _sprite = album_pos.image;
	//draw_sprite_stretched(global.album[_array_pos].image, 0, 1920 - photo_pos + 40, 82 + 40, 820 - 80, 820 - 80);
	draw_sprite_ext(_sprite, 0, 0, 0, 1080 / sprite_get_width(_sprite), 1080 / sprite_get_height(_sprite), 0, c_white, 1);