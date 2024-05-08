/// @description Insert description here
// You can write your code in this editor

text = "[wave][spr_mouse] Drag to pan the camera[/]";

control_label = scribble(text)
control_label.starting_format("ft_slider_label", ACCENT);
control_label.align(fa_center, fa_middle);
control_label.scale(0.8);

initial_view_x = obj_pan_zoom.view_x;
initial_view_y = obj_pan_zoom.view_y;

x = 865 + 530 / 2;
y = 894 + 40;

up = true;
step = 100;