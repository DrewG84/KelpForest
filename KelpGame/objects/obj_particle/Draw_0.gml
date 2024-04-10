/// @description Insert description here
// You can write your code in this editor

var _scale = obj_pan_zoom.scale;

draw_set_color(WHITE);
if !instance_exists(obj_capture) {
	draw_set_alpha(0.6);
}

draw_circle(x, y, size * _scale, false);

draw_set_alpha(1);

