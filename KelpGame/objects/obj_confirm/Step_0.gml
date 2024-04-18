/// @description Insert description here
// You can write your code in this editor
var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);
var _scale = 1;

var _x = 550;
var _y = EaseInBack(step, 298, 1080 + 80, 100);
var _width = 820;
var _height = 484;
var go_x = _x + _width - 120 - _go_btn_width;
var cancel_x = go_x - 40 - 40 - 40 - _cancel_btn_width;


if point_in_rectangle(mouse_x, mouse_y,
(cancel_x) * _scale, (_y + _height - 60) * _scale, 
(go_x - 40) * _scale, (_y + _height + 60) * _scale) {

cancel_hover = true;
cancel_color =  YELLOW_DARK;

cancel_btn = scribble("[wave]" + btn1_text + "[/]");
cancel_btn.scale(obj_window_scaler.w_ratio);
cancel_btn.starting_format("ft_slider_label", WHITE);

if mouse_check_button_pressed(mb_left) {
	up = false;
}

} else {
	
	cancel_hover = false;
	cancel_color =  YELLOW;
	
	cancel_btn = scribble(btn1_text);
	cancel_btn.scale(obj_window_scaler.w_ratio);
	cancel_btn.starting_format("ft_slider_label", WHITE);
	
}

if point_in_rectangle(mouse_x, mouse_y,
(go_x) * _scale, (_y + _height - 60) * _scale,
(_x +_width - 40) * _scale, (_y + _height + 60) * _scale) {

go_hover = true;
go_color =  ACCENT_DARK;

go_btn = scribble("[wave]" + btn2_text + "[/]");
go_btn.scale(obj_window_scaler.w_ratio);
go_btn.starting_format("ft_slider_label", WHITE);

if mouse_check_button_pressed(mb_left) {
	sprite_delete(array_pop(global.album).image)
	room_goto(room_val);
}

} else {
	
	go_hover = false;
	go_color =  ACCENT;
	
	go_btn = scribble(btn2_text);
	go_btn.scale(obj_window_scaler.w_ratio);
	go_btn.starting_format("ft_slider_label", WHITE);
	
}

if up = false && step = 100 {
	instance_destroy();	
}