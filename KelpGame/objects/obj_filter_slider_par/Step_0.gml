/// @description Insert description here
// You can write your code in this editor
var button_x = x + radius + ((slider_width) * (value));
var button_y = (82 + y_val + 110);

label.scale(obj_window_scaler.w_ratio);

//if point_in_circle(mouse_x, mouse_y, button_x, button_y, radius * _scale) {
if point_in_rectangle(mouse_x, mouse_y, button_x - (45), button_y - (110 - 15), button_x + (45), button_y) 
&& !instance_exists(obj_confirm) {
	hover = true;
if mouse_check_button_pressed(mb_left) {
	
		
		selected = true;
		global.draggable = false;
		
		if selected_prev != selected {
		text_element = "[wave]" + name + "[/]";
		label = scribble(text_element);
		label.scale(obj_window_scaler.w_ratio);
		label.starting_format("ft_slider_label", WHITE);
		}
		selected_prev = true;
}
} else {
	hover = false;	
}

if !mouse_check_button(mb_left) {
	selected = false;
	global.draggable = true;
	if selected_prev != selected {
		text_element = name;
		label = scribble(text_element);
		label.scale(obj_window_scaler.w_ratio);
		label.starting_format("ft_slider_label", WHITE);
	}
	selected_prev = false;
}

if selected {
	value = clamp((((mouse_x) - (x + 45))) / (slider_width), 0, max_val);
	
	if value != val_prev {
		if !audio_is_playing(sd_slider) && global.play_sound = true && value < 1 && value > 0 {
		audio_play_sound(sd_slider, 0, false, 1, 0, lerp(0.7, 1.3, value));
		}
	}
	
	val_prev = clamp((((mouse_x) - (x + 45))) / (slider_width), 0, max_val);
	//event_user(0);
}

if hover = true {
	hover_anim += 1;
} else {
	hover_anim -= 1;
}
hover_anim = clamp(hover_anim, 0, 8);
if selected = true {
	hover_anim = 8;
}