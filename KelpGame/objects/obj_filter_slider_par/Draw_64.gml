/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;


var _x = (FX_X) * _w_scale;
var _y = (82 + y_val) * _h_scale;

//slider range
draw_set_color(WHITE);
draw_roundrect_ext(_x, _y + (46 * _h_scale), _x + ((slider_width + (radius * 2) - 2) * _w_scale), _y + (64 + 46) * _h_scale, 50 * _w_scale, 50 * _w_scale, false);
draw_roundrect_ext(_x, _y + ((46 + 25) * _h_scale), _x + ((slider_width + (radius * 2) - 2) * _w_scale), _y + (64 + 46) * _h_scale, 22 * _w_scale, 22 * _w_scale, false);


//slider button
//if selected = true {
	gui_pos = (x + radius + ((slider_width) * (value))) * _w_scale;
//}
draw_sprite_ext(spr_slider_button, 0, gui_pos, _y + (111) * _h_scale, _w_scale, _w_scale, 90, c_white, 1);
//move
draw_sprite_ext(spr_slider_button, 0, gui_pos, _y + (111 - hover_anim) * _h_scale, _w_scale, _w_scale, 90, c_white, 1);

//label
draw_set_color(WHITE);
label.draw(_x, _y + (110 + 10) * _h_scale);
