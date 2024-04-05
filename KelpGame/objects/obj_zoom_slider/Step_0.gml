/// @description Insert description here
// You can write your code in this editor
var _scale = obj_pan_zoom.scale;

var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);


var button_x = x;
var button_y = y + ((slider_height * _scale) * (val));

if point_in_rectangle(mouse_x, mouse_y, button_x - (78 * _scale), button_y - (45 * _scale), button_x + (32 * _scale), button_y + (45 * _scale)) {
if mouse_check_button_pressed(mb_left) {
	
		
		selected = true;
		global.draggable = false;
}
	window_set_cursor(cr_handpoint);
}

if !mouse_check_button(mb_left) {
	selected = false;
	global.draggable = true;
}

if selected {
	val = clamp((((mouse_y)- (y))) / (slider_height * _scale), 0, max_value);
	//event_user(0);
}

x = (x_pos) * _scale + _window_x;
y = (82 + radius) * _scale + _window_y;