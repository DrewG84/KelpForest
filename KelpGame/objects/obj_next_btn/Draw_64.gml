/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

var _x = 1920 - 82 - 82 - 62;
var _y = 82 + 780;

if radius > 0 {
draw_set_color(WHITE_DARK);
draw_circle(_x * _w_scale, _y * _h_scale, ((60 * radius) + 10) * _h_scale, false);


draw_set_color(color);
draw_circle(_x * _w_scale, _y * _h_scale, (60 * radius) * _h_scale, false);
}

draw_sprite_ext(spr_arrow, 0, _x * _w_scale, (_y + 5 * sin(hover_anim)) * _h_scale, _w_scale * -1.3 * radius, _h_scale * 1.3 * radius, -5 * sin(hover_anim), c_white, 1);
