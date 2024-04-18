/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

draw_set_color(WHITE);
draw_circle(x * _w_scale, y * _h_scale, 60 * _w_scale, false);


draw_set_color(color);
draw_circle(x * _w_scale, y * _h_scale, 50 * _w_scale, false);


draw_set_color(WHITE);
draw_triangle((x - 20) * _w_scale, (y - 0) * _h_scale, (x - 20) * _w_scale, (y - 40 - 0) * _h_scale, (x - 20 - 30) * _w_scale, (y - 20 - 0) * _h_scale, false);

draw_sprite_ext(spr_camera_icon, 0, x * _w_scale, (y) * _h_scale, _w_scale / 1.7, (_h_scale / 1.7) * scalar, rotate, c_white, 1);