/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

draw_set_color(BLACK);
draw_set_alpha(opacity);
draw_rectangle(0, 0, 1920 * _w_scale, 1080 * _h_scale, false);
draw_set_alpha(1);

if up = true {
	step -= 1;	
} else {
	step += 1;
}

step = clamp(step, 0, 100);
opacity = lerp(0.5, 0, step / 100);

var _x = 550;
var _y = EaseInBack(step, 298, 1080 + 80, 100);
var _width = 820;
var _height = 484;

draw_set_color(WHITE);
draw_roundrect_ext((_x) * _w_scale, (_y) * _h_scale, (_x + _width) * _w_scale, (_y + _height) * _h_scale, 80 * _w_scale, 80 * _h_scale, false);


title.scale(obj_window_scaler.w_ratio / 2);
draw_set_font(ft_button1);
var _title_width = string_width(title_text) / 1.6;
draw_set_color(ACCENT);
draw_roundrect_ext((_x + 40) * _w_scale, (_y - 60) * _h_scale, (_x + 40 + _title_width) * _w_scale, (_y + 60) * _h_scale, 120 * _w_scale, 120 * _h_scale, false);
title.draw((_x + 80) * _w_scale, (_y - 30) * _h_scale);



content.draw((_x + 80) * _w_scale, (_y + 60 + 40) * _h_scale);
content.scale(obj_window_scaler.w_ratio);
content.wrap(obj_window_scaler.w_ratio * 660);


go_btn.scale(obj_window_scaler.w_ratio);
draw_set_font(ft_slider_label);
_go_btn_width = string_width(btn2_text);
draw_set_color(go_color);
var go_x = _x + _width - 120 - _go_btn_width
draw_roundrect_ext((go_x) * _w_scale, (_y + _height - 60) * _h_scale, (_x +_width - 40) * _w_scale, (_y + _height + 60) * _h_scale, 120 * _w_scale, 120 * _h_scale, false);
go_btn.draw((go_x + 40) * _w_scale, (_y + _height - 30) * _h_scale);

cancel_btn.scale(obj_window_scaler.w_ratio);
draw_set_font(ft_slider_label);
_cancel_btn_width = string_width(btn1_text);
draw_set_color(cancel_color);
var cancel_x = go_x - 40 - 40 - 40 - _cancel_btn_width;
draw_roundrect_ext((cancel_x) * _w_scale, (_y + _height - 60) * _h_scale, (go_x - 40) * _w_scale, (_y + _height + 60) * _h_scale, 120 * _w_scale, 120 * _h_scale, false);
cancel_btn.draw((cancel_x + 40) * _w_scale, (_y + _height - 30) * _h_scale);




