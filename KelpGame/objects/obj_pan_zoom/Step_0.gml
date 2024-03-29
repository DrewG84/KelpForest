/// @description Insert description here
// You can write your code in this editor

var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

scale = clamp(scale, 0.5, 1);

//if point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 82, 540, )


if mouse_check_button_pressed(mb_left) {
	drag_x = mouse_x;
}

if mouse_check_button(mb_left) {
	view_x = drag_x - (mouse_x - view_x);
	view_x = max(458 - (80), min(view_x, (room_width - 458 - (80))));
}


if keyboard_check(vk_right) {
	view_x += 5;	
}
if keyboard_check(vk_left) {
	view_x -= 5;	
}

var _scaled_x = (((scale * 1920) - 1920) / 2) + (458 * ((1 - scale) + 1));
var _scaled_y = ((scale * 1080) - 1080) / 2;



//var _scaled_y = ((scale * _h_scale * 1080) - (_h_scale * 1080)) / 2;

camera_set_view_pos(camera, view_x - _scaled_x, view_y - _scaled_y)
camera_set_view_size(camera, 1920 * scale, 1080 * scale);