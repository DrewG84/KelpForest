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

draw_roundrect_ext((1920 - 82 - 200) * _w_scale, 82 * _h_scale, (1920 - 82) * _w_scale, (1080 - 82) * _h_scale, 200 * _w_scale, 200 * _h_scale, false);