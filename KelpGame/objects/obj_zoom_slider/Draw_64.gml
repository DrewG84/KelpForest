/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;


var _x = (x_pos) * _w_scale;
var _y = 82;


//draw slider range
draw_set_color(c_white);
draw_roundrect_ext(_x - (10 * _w_scale), _y * _h_scale, _x + (10 * _w_scale), (_y + 916) * _h_scale, 20 * _w_scale, 20 * _w_scale, false);

//get slider pos
if selected = true {
	gui_pos = clamp(window_mouse_get_y() - window_get_y(), ((82 + radius) * _h_scale), ((82 + radius) * _h_scale) + (slider_height * _h_scale));
	gui_temp = ((gui_pos - (_y * _h_scale))) /  (916 * _h_scale);
} else {
	gui_pos = lerp(_y * _h_scale, (_y + 916) * _h_scale, gui_temp);
}

//slider fill
draw_set_color(c_green);
draw_roundrect_ext(_x - (10 * _w_scale), gui_pos, _x + (10 * _w_scale), (_y + 916) * _h_scale, 20 * _w_scale, 20 * _w_scale, false);

//draw slider button
draw_set_color(c_green);
draw_circle(_x, gui_pos, radius * _w_scale, false);


//draw_text(window_mouse_get_x(), window_mouse_get_y(), string(gui_pos));