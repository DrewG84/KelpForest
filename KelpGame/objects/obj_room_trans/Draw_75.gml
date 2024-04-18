/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;


var _surf = -1;
if !surface_exists(_surf) {
	_surf = surface_create(1920, 1080);
}

surface_set_target(_surf);
draw_clear_alpha(BLACK, 1);
gpu_set_blendmode(bm_subtract);
draw_circle(circle_x, circle_y, radius, false);
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface_ext(_surf, 0, 0, _w_scale, _h_scale, 0, c_white, 1);

surface_free(_surf);