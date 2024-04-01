/// @description Insert description here
// You can write your code in this editor

var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;


scale = lerp(0.5, 1, obj_zoom_slider.val);

if point_in_rectangle(window_mouse_get_x() - window_get_x(), window_mouse_get_y() - window_get_y(), WINDOW_X * _w_scale, 82 * _h_scale, (916 + WINDOW_X) * _w_scale,  (916 + 82) * _h_scale) && global.draggable = true {


if mouse_check_button_pressed(mb_left) {
	drag_x = mouse_x;
	drag_y = mouse_y;
}

if mouse_check_button(mb_left) {
	window_set_cursor(cr_drag);
	view_x = drag_x - (mouse_x - view_x);
	view_x = max(540 - 2 * WINDOW_X, min(view_x, (room_width - 458 + 82 - 2 * WINDOW_X)));
	view_y = drag_y - (mouse_y - view_y);
	view_y = max(-80, min(view_y, (room_height - 1080 + 80)));
} else {
	window_set_cursor(cr_handpoint);	
}

} else {
	window_set_cursor(cr_default);	
}

var _scaled_x = (((scale * 1920) - 1920) / 2) + ((540 - WINDOW_X) * ((1 - scale) + 1));
var _scaled_y = ((scale * 1080) - 1080) / 2;



//var _scaled_y = ((scale * _h_scale * 1080) - (_h_scale * 1080)) / 2;

camera_set_view_pos(camera, view_x - _scaled_x, view_y - _scaled_y)
camera_set_view_size(camera, 1920 * scale, 1080 * scale);