/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;



for (var i = 1; i > 0; i -= 0.1) {
	var _scaled_x = ((i * 1920) - 1920) / 2;
	draw_rectangle(0 - _scaled_x, 0, 0 - _scaled_x + (1920 * i), 1080 * i, true);	
}


