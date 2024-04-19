/// @description Insert description here
// You can write your code in this editor
var _scale = obj_pan_zoom.scale;

var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);


var button_x = x;
var button_y = y + ((slider_height * _scale) * (val));

if hover = true {
	hover_anim += 1;
} else {
	hover_anim -= 1;
}
hover_anim = clamp(hover_anim, 0, 12);
if selected = true {
	hover_anim = 12;
}

if point_in_rectangle(mouse_x, mouse_y, button_x - ((78 + 6) * _scale), button_y - (45 * _scale), button_x + (32 * _scale), button_y + (45 * _scale)) {
	hover = true;
if mouse_check_button_pressed(mb_left) {
	
		
		selected = true;
		global.draggable = false;
}
	window_set_cursor(cr_handpoint);
} else {
	hover = false
}

if !mouse_check_button(mb_left) {
	selected = false;
	global.draggable = true;
}

if selected {
	val = clamp((((mouse_y)- (y))) / (slider_height * _scale), 0, max_value);
	
	if abs(val - val_prev) > 0.01 {
		if !audio_is_playing(sd_slider) && global.play_sound = true {
		audio_play_sound(sd_slider, 0, false, 1, 0, lerp(1.3, 0.7, val));
		}
	}
	
	val_prev = clamp((((mouse_y)- (y))) / (slider_height * _scale), 0, max_value);
	//event_user(0);
}

x = (x_pos) * _scale + _window_x;
y = (82 + radius) * _scale + _window_y;