/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

//if current_sprite != -1 {
//	draw_sprite_ext(global.album[array_length(global.album)], 0, 82 * _w_scale, 82 * _h_scale, 1, 1, 0, c_white, 1);
//}
if hover = true {
	draw_set_color(ACCENT);
} else {
	draw_set_color(WHITE);
}

var button_top = min(button_y - 80, 82);
var button_bottom = max(1082 - 82, button_y + 80);

draw_roundrect_ext((1920 - 82 - 200) * _w_scale, button_top * _h_scale, (1920 - 82) * _w_scale, (button_bottom) * _h_scale, 200 * _w_scale, 200 * _h_scale, false);

draw_set_color(BLACK);
draw_roundrect_ext((1920 - 82 - 200 + 10) * _w_scale, (button_top + 10) * _h_scale, (1920 - 82 - 10) * _w_scale, (button_bottom - 10) * _h_scale, 190 * _w_scale, 190 * _h_scale, false);

draw_set_color(WHITE);
draw_roundrect_ext((1920 - 82 - 200 + 20) * _w_scale, (button_top + 20) * _h_scale, (1920 - 82 - 20) * _w_scale, (button_bottom - 20) * _h_scale, 180 * _w_scale, 180 * _h_scale, false);

draw_set_color(c_red);
draw_circle((1920 - 82 - 100) * _w_scale, button_y * _h_scale, 80 * _h_scale , false);

