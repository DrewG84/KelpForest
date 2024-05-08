/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

control_label.scale(0.8 * _w_scale);

var _width = 530 / 2;
var _height = 80 / 2;

draw_set_color(WHITE)
draw_roundrect_ext((x - _width) * _w_scale, (y - _height) * _w_scale, (x + _width) * _w_scale, (y + _height) * _w_scale, 80 * _w_scale, 80 * _w_scale, false);


scribble_anim_wave(3 * _w_scale, 50, 0.1);

control_label.draw(x * _w_scale, y * _h_scale);
scribble_anim_reset();
