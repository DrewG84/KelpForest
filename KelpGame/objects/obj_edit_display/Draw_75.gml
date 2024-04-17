/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

if flash > 0 {
var _flash_surf = surface_create(1920 * _w_scale, 1080 * _h_scale);

surface_set_target(_flash_surf);

draw_clear_alpha(WHITE, flash);

surface_reset_target();
draw_surface(_flash_surf,0, 0);
surface_free(_flash_surf);
}