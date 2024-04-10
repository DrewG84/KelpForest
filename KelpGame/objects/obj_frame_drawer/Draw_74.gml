/// @description Insert description here
// You can write your code in this editor

var _scale = lerp(90, 0, obj_zoom_slider.val);
var _focus = obj_focus.focus_dist;

var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

var _surf = surface_create(1920 * _w_scale, 1080 * _h_scale);

surface_set_target(_surf);

draw_clear_alpha(BLACK, 1);

//draw_rectangle(0, 0, 1920 * _w_scale, 1080 * _h_scale, false);


gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
draw_roundrect_ext(WINDOW_X * _w_scale, 82 * _h_scale, (WINDOW_X + 916) * _w_scale, (82 + 916)  * _h_scale, 80 * _w_scale, 80 * _h_scale, false);
gpu_set_blendmode(bm_normal);

surface_reset_target();

var _surf2 = surface_create(1920 * _w_scale, 1080 * _h_scale);

surface_set_target(_surf2);

draw_clear_alpha(WHITE, 0.3);

gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
var _offset = 10
draw_roundrect_ext((WINDOW_X + _offset) * _w_scale, (82 + _offset) * _h_scale, (WINDOW_X + 916 - _offset) * _w_scale, (82 + 916 - _offset)  * _h_scale, 70 * _w_scale, 70 * _h_scale, false);
gpu_set_blendmode(bm_normal);


surface_reset_target();


draw_surface(_surf2,0, 0);
draw_surface(_surf,0, 0);

surface_free(_surf);
surface_free(_surf2);

draw_sprite_ext(spr_reticle, 0, (WINDOW_X + (916 / 2)) * _w_scale, (82 + (916 / 2)) * _h_scale, _w_scale, _h_scale, _scale, c_white, 0.3);
draw_sprite_ext(spr_reticle, 1, (WINDOW_X + (916 / 2)) * _w_scale, (82 + (916 / 2)) * _h_scale, _w_scale, _h_scale, 0, c_white, 0.3);
draw_sprite_ext(spr_reticle, 2, (WINDOW_X + (916 / 2)) * _w_scale, (82 + (916 / 2)) * _h_scale, _w_scale, _h_scale, 0, c_white, 0.3);

draw_sprite_ext(spr_reticle, 3, (WINDOW_X + (50 + (290 / 6) * _focus)) * _w_scale, (82 + 110) * _h_scale, _w_scale, _h_scale, 0, c_white, 0.3);
