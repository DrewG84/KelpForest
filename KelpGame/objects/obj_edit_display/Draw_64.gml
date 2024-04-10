/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;


var _surf = surface_create(1920 * _w_scale, 1080 * _h_scale);

surface_set_target(_surf);

draw_clear_alpha(BLACK, 1);



gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);

draw_roundrect_ext(82 * _w_scale, 82 * _h_scale, (82 + 916) * _w_scale, (82 + 916) * _w_scale, 80  * _w_scale, 80 * _w_scale, false);
gpu_set_blendmode(bm_normal);

surface_reset_target();

var _surf2 = surface_create(1920 * _w_scale, 1080 * _h_scale);

surface_set_target(_surf2);

draw_clear_alpha(WHITE, 1);

gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
draw_roundrect_ext((82 + 40) * _w_scale, (82 + 40) * _h_scale, (82 + 916 - 41) * _w_scale, (82 + 916 - 100)  * _h_scale, 70 * _w_scale, 70 * _h_scale, false);
gpu_set_blendmode(bm_normal);




surface_reset_target();


draw_surface(_surf2,0, 0);
draw_surface(_surf,0, 0);

surface_free(_surf);
surface_free(_surf2);


if flash > 0 {
var _flash_surf = surface_create(1920 * _w_scale, 1080 * _h_scale);

surface_set_target(_flash_surf);

draw_clear_alpha(WHITE, flash);

surface_reset_target();
draw_surface(_flash_surf,0, 0);
surface_free(_flash_surf);
}





