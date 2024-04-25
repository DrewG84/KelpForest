/// @description Insert description here
// You can write your code in this editor

val = 1;
val_prev = 1;
max_value = 1;
selected = false;

hover = false;
hover_anim = 0;

radius = 55;
slider_height = 916 - (2 * radius - 2);

x_pos = ZOOM_X;
x = x_pos;
y = 82 + radius;

gui_pos = lerp((82 + radius - 2) * obj_window_scaler.h_ratio, (82 + 916 - radius + 2) * obj_window_scaler.h_ratio, val);
gui_temp = ((gui_pos - (82 * obj_window_scaler.h_ratio))) / (916 * obj_window_scaler.h_ratio);