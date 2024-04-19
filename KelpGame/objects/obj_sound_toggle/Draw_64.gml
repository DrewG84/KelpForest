/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

draw_set_color(WHITE);
draw_circle(x * _w_scale, y * _h_scale, 60 * _w_scale, false);

draw_set_color(color);
draw_circle(x * _w_scale, y * _h_scale, 50 * _w_scale, false);

draw_sprite_ext(spr_speaker_base, 0, x * _w_scale, (y + 33) * _h_scale, _w_scale, _h_scale * scalar, rotate, c_white, 1);

draw_circle(x * _w_scale, (y + 8) * _w_scale, 16 * scalar * _w_scale, false);

draw_set_color(BLACK)
draw_circle(x * _w_scale, (y + 8) * _w_scale, 11 * scalar * _w_scale, false);

if state = true {
	draw_sprite_ext(spr_music, 0, (x + (23)) * _w_scale, (y - (12 * 2 * scalar)) * _h_scale, _w_scale, _h_scale, -0.5 * rotate, c_white, 1);
}

if state = false {
	
	draw_set_color(color)
	draw_line_width((x - 32) * _w_scale, (y - 32 + 8) * _h_scale, (x + 30) * _w_scale, (y + 30 + 8) * _h_scale, 10 * _w_scale);
	
	draw_set_color(BLACK)
	draw_line_width((x - 32 + 5) * _w_scale, (y - 32 + 8 - 8) * _h_scale, (x + 32 - 5) * _w_scale, (y + 32 + 8 - 14) * _h_scale, 10 * _w_scale);
	draw_circle((x - 32 + 5) * _w_scale, (y - 32 + 8 - 8) * _h_scale, 5 * _w_scale, false);
	draw_circle((x + 32 - 5) * _w_scale, (y + 32 + 8 - 14) * _h_scale, 5 * _w_scale, false);
	
}