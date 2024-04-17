/// @description Insert description here
// You can write your code in this editor


text_element = name;
label = scribble(text_element);
label.scale(obj_window_scaler.w_ratio);
label.starting_format("ft_slider_label", WHITE);

value = (val - min_val) / (max_val - min_val);

if val = min_val {
	value = 0;	
}
if val = mid_val {
	value = 0.5;	
}
max_val = 100;

hover = false;
hover_anim = 0;

y_val = y;

radius = 45;
//slider_width = 548 - (2 * radius);
slider_width = 548 - (radius * 2)


var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;
var _x = (FX_X) * _w_scale;
var _y = (82 + y_val) * _h_scale;


gui_pos = (FX_X + radius + ((slider_width) * (value))) * _w_scale;
	

selected = false;
selected_prev = false;
x = FX_X;
