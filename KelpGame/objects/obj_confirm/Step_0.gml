/// @description Insert description here
// You can write your code in this editor
var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);
var _scale = 1;


var _max = 50;
if up = true {
	step -= 1;	
} else {
	step += 1;
}

step = clamp(step, 0, _max);
opacity = lerp(0.5, 0, step / _max);

var _x = 550;
var _y = EaseInBack(step, 298, 1080 + 80, _max);
var _width = 820;
var _height = 384;
var go_x = _x + _width - 120 - _go_btn_width;
var cancel_x = go_x - 40 - 40 - 40 - _cancel_btn_width;


if point_in_rectangle(mouse_x, mouse_y,
(cancel_x) * _scale, (_y + _height - 60) * _scale, 
(go_x - 40) * _scale, (_y + _height + 60) * _scale) {

cancel_hover = true;
cancel_color =  YELLOW_DARK;
if cancel_hover != cancel_hover_prev {
cancel_btn = scribble("[wave]" + btn1_text + "[/]");
cancel_btn.scale(obj_window_scaler.w_ratio);
cancel_btn.starting_format("ft_slider_label", WHITE);
}
cancel_hover_prev = cancel_hover;

if mouse_check_button_pressed(mb_left) && !instance_exists(obj_room_trans) {
	up = false;
	click_sound();
}

} else {
	
	cancel_hover = false;
	cancel_color =  YELLOW;
	
	if cancel_hover != cancel_hover_prev {
	cancel_btn = scribble(btn1_text);
	cancel_btn.scale(obj_window_scaler.w_ratio);
	cancel_btn.starting_format("ft_slider_label", WHITE);
	}
	cancel_hover_prev = cancel_hover;
	
}

if point_in_rectangle(mouse_x, mouse_y,
(go_x) * _scale, (_y + _height - 60) * _scale,
(_x +_width - 40) * _scale, (_y + _height + 60) * _scale) {

go_hover = true;
go_color =  ACCENT_DARK;

if go_hover != cancel_go_prev {
go_btn = scribble("[wave]" + btn2_text + "[/]");
go_btn.scale(obj_window_scaler.w_ratio);
go_btn.starting_format("ft_slider_label", WHITE);
}
go_hover_prev = go_hover;

if mouse_check_button_pressed(mb_left) && !instance_exists(obj_room_trans) {
	var _struct = {
		grow: false,
		new_room_val: room_val,
	}
	click_sound();
	instance_create_depth(0,0, depth - 100, instance, _struct);
	

}

} else {
	
	go_hover = false;
	go_color =  ACCENT;
	
	if go_hover != cancel_go_prev {
	go_btn = scribble(btn2_text);
	go_btn.scale(obj_window_scaler.w_ratio);
	go_btn.starting_format("ft_slider_label", WHITE);
	}
go_hover_prev = go_hover;
	
}

if up = false && step = _max {
	instance_destroy();	
}