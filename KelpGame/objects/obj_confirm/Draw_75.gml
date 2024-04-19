/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

draw_set_color(BLACK);
draw_set_alpha(opacity);
draw_rectangle(0, 0, 1920 * _w_scale, 1080 * _h_scale, false);
draw_set_alpha(1);



var _x = 550;
var _y = EaseInBack(step, 298, 1080 + 80, 50);
var _width = 820;
var _height = 384;

draw_set_color(WHITE_DARK);
draw_roundrect_ext((_x) * _w_scale, (_y) * _h_scale, (_x + _width) * _w_scale, (_y + _height) * _h_scale, 80 * _w_scale, 80 * _h_scale, false);


title.scale(obj_window_scaler.w_ratio / 2);
draw_set_font(ft_button1);
var _title_width = string_width(title_text) / 1.6;
draw_set_color(WHITE_DARK);
draw_roundrect_ext((_x + 40 - 10) * _w_scale, (_y - 60 - 10) * _h_scale, (_x + 25 + 10 + _title_width) * _w_scale, (_y + 60 + 10) * _h_scale, 130 * _w_scale, 130 * _h_scale, false);
draw_set_color(ACCENT);
draw_roundrect_ext((_x + 40) * _w_scale, (_y - 60) * _h_scale, (_x + 25 + _title_width) * _w_scale, (_y + 60) * _h_scale, 120 * _w_scale, 120 * _h_scale, false);
title.draw((_x + 80) * _w_scale, (_y - 30) * _h_scale);



content.draw((_x + 80) * _w_scale, (_y + 60 + 40) * _h_scale);
content.scale(obj_window_scaler.w_ratio);
content.wrap(obj_window_scaler.w_ratio * 660);


go_btn.scale(obj_window_scaler.w_ratio);


var go_x = _x + _width - 120 - _go_btn_width
draw_set_color(WHITE);
draw_roundrect_ext((go_x - 10) * _w_scale, (_y + _height - 60 - 10) * _h_scale, (_x +_width - 40 + 10) * _w_scale, (_y + _height + 60 + 10) * _h_scale, 135 * _w_scale, 135 * _h_scale, false);
draw_set_color(go_color);
draw_roundrect_ext((go_x) * _w_scale, (_y + _height - 60) * _h_scale, (_x +_width - 40) * _w_scale, (_y + _height + 60) * _h_scale, 120 * _w_scale, 120 * _h_scale, false);
go_btn.draw((go_x + 40) * _w_scale, (_y + _height - 30) * _h_scale);

cancel_btn.scale(obj_window_scaler.w_ratio);


var cancel_x = go_x - 40 - 40 - 40 - _cancel_btn_width;
draw_set_color(WHITE);
draw_roundrect_ext((cancel_x - 10) * _w_scale, (_y + _height - 60 - 10) * _h_scale, (go_x - 40 + 10) * _w_scale, (_y + _height + 60 + 10) * _h_scale, 135 * _w_scale, 135 * _h_scale, false);
draw_set_color(cancel_color);
draw_roundrect_ext((cancel_x) * _w_scale, (_y + _height - 60) * _h_scale, (go_x - 40) * _w_scale, (_y + _height + 60) * _h_scale, 120 * _w_scale, 120 * _h_scale, false);
cancel_btn.draw((cancel_x + 40) * _w_scale, (_y + _height - 30) * _h_scale);




