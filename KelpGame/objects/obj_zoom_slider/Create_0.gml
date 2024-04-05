/// @description Insert description here
// You can write your code in this editor

val = 1;
max_value = 1;
selected = false;


radius = 45;
slider_height = 916 - (2 * radius);

x_pos = ZOOM_X;
x = x_pos;
y = 82 + radius;

gui_pos = lerp((82 + radius) * obj_window_scaler.h_ratio, (82 + 916 - radius) * obj_window_scaler.h_ratio, val);
gui_temp = ((gui_pos - (82 * obj_window_scaler.h_ratio))) / (916 * obj_window_scaler.h_ratio);