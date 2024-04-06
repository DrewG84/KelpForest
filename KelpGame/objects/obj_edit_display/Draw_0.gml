/// @description Insert description here
// You can write your code in this editor
var _array_pos = array_length(global.album) - 1;

var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

if global.album[_array_pos] != -1 {
	//draw_sprite_ext(global.album[_array_pos].image, 0, 82, 82, 1, 1, 0, c_white, 1);
	//var _width = sprite_get_width(global.album[_array_pos].image) / 916;
	draw_sprite_stretched(global.album[_array_pos].image, 0, 82, 82, 916, 916);
}

//draw_text(100, 100, string(global.album))