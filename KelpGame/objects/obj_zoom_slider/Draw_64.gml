/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;


var _x = (x_pos) * _w_scale;
var _y = 82;


//draw slider range
draw_set_color(WHITE);
draw_roundrect_ext(_x - (25 * _w_scale), _y * _h_scale, _x + (32 * _w_scale), (_y + 916) * _h_scale, 22 * _w_scale, 22 * _w_scale, false);
draw_roundrect_ext(_x - (32 * _w_scale), _y * _h_scale, _x + (10 * _w_scale), (_y + 916) * _h_scale, 50 * _w_scale, 50 * _w_scale, false);

//get slider pos
if selected = true {
	gui_pos = clamp(window_mouse_get_y() - window_get_y(), ((82 + radius) * _h_scale), ((82 + radius) * _h_scale) + (slider_height * _h_scale));
	gui_temp = ((gui_pos - (_y * _h_scale))) /  (916 * _h_scale);
} else {
	gui_pos = lerp(_y * _h_scale, (_y + 916) * _h_scale, gui_temp);
}

//slider fill
draw_set_color(WHITE_DARK);
draw_roundrect_ext(_x - (20 * _w_scale), (_y + 10) * _h_scale, _x + (22 * _w_scale), (_y + 906) * _h_scale, 22 * _w_scale, 22 * _w_scale, false);
draw_roundrect_ext(_x - (22 * _w_scale), (_y + 10) * _h_scale, _x + (5 * _w_scale), (_y + 906) * _h_scale, 50 * _w_scale, 50 * _w_scale, false);


draw_set_color(ACCENT_DARK);
draw_roundrect_ext(_x - (20 * _w_scale), gui_pos, _x + (22 * _w_scale), (_y + 906) * _h_scale, 22 * _w_scale, 22 * _w_scale, false);
draw_roundrect_ext(_x - (22 * _w_scale), gui_pos, _x + (5 * _w_scale), (_y + 906) * _h_scale, 50 * _w_scale, 50 * _w_scale, false);

//for (var i = (_y + 10) * _h_scale; i < (_y + 876) * _h_scale; i += 25 * _h_scale) {
//	draw_set_color(WHITE);
//	draw_set_alpha(0.3)
//	draw_line_width(_x - (32 * _w_scale), i, _x + (32 * _w_scale), i + 40 * _h_scale, 10 * _w_scale);
//	draw_set_alpha(1)
//}

//draw slider button
draw_set_color(ACCENT);

//draw_roundrect_ext(_x - (78 * _w_scale), gui_pos, _x + (32 * _w_scale), gui_pos + (45 * _w_scale), 20 * _w_scale, 20 * _w_scale, false);
//draw_roundrect_ext(_x - (32 * _w_scale), gui_pos - (45 * _w_scale), _x + (32 * _w_scale), gui_pos + (40 * _w_scale), 20 * _w_scale, 20 * _w_scale, false);
//draw_roundrect_ext(_x - (78 * _w_scale), gui_pos - (45 * _w_scale), _x + (32 * _w_scale), gui_pos + (40 * _w_scale), 50 * _w_scale, 50 * _w_scale, false);

draw_sprite_ext(spr_slider_button, 0, _x + (33 * _w_scale), gui_pos, -_w_scale, _w_scale, 0, c_white, 1);
//move
draw_sprite_ext(spr_slider_button, 0, _x + ((33 - hover_anim) * _w_scale), gui_pos, -_w_scale, _w_scale, 0, c_white, 1);


//draw_text(window_mouse_get_x(), window_mouse_get_y(), string(gui_pos));