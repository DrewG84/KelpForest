/// @description Insert description here
// You can write your code in this editor

val = 1;
max_value = 1;
selected = false;


radius = 40;
slider_height = 916 - (2 * radius);

x = 916 + 82 + 82;
y = 82 + radius;

gui_pos = lerp((82 + radius) * obj_window_scaler.h_ratio, (82 + 916 - radius) * obj_window_scaler.h_ratio, 1);
gui_temp = ((gui_pos - (82 * obj_window_scaler.h_ratio))) / (916 * obj_window_scaler.h_ratio);