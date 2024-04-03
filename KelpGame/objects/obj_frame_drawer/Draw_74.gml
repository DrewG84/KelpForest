/// @description Insert description here
// You can write your code in this editor

var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

var _surf = surface_create(1920 * _w_scale, 1080 * _h_scale);

surface_set_target(_surf);

draw_clear_alpha(c_black, 1);

//draw_rectangle(0, 0, 1920 * _w_scale, 1080 * _h_scale, false);


gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
draw_roundrect_ext(WINDOW_X * _w_scale, 82 * _h_scale, (WINDOW_X + 916) * _w_scale, (82 + 916)  * _h_scale, 80 * _w_scale, 80 * _h_scale, false);
gpu_set_blendmode(bm_normal);

surface_reset_target();

var _surf2 = surface_create(1920 * _w_scale, 1080 * _h_scale);

surface_set_target(_surf2);

draw_clear_alpha(c_white, 0.2);

gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
var _offset = 10
draw_roundrect_ext((WINDOW_X + _offset) * _w_scale, (82 + _offset) * _h_scale, (WINDOW_X + 916 - _offset) * _w_scale, (82 + 916 - _offset)  * _h_scale, 75 * _w_scale, 75 * _h_scale, false);
gpu_set_blendmode(bm_normal);


surface_reset_target();


draw_surface(_surf2,0, 0);
draw_surface(_surf,0, 0);

surface_free(_surf);
surface_free(_surf2);

