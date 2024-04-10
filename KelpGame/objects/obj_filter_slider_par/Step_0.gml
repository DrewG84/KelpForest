/// @description Insert description here
// You can write your code in this editor
var button_x = x + ((slider_width * _scale) * (value));
var button_y = y;

//if point_in_circle(mouse_x, mouse_y, button_x, button_y, radius * _scale) {
if point_in_rectangle(mouse_x, mouse_y, button_x - (32 * _scale), button_y - (45 * _scale), button_x + (78 * _scale), button_y + (45 * _scale)) {
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
	value = clamp((((mouse_x)- (x))) / (slider_width * _scale), 0, max_val);
	//event_user(0);
}