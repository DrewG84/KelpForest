/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

if light_sweep > 0 {
draw_set_color(WHITE);
draw_set_alpha(0.3);
draw_line_width((light_sweep) * _w_scale, 0 * _h_scale, (light_sweep - 320) * _w_scale, 1000 * _h_scale, 300 * _h_scale);
draw_set_alpha(1);
}


var _surf = surface_create(1920 * _w_scale, 1080 * _h_scale);

surface_set_target(_surf);


if photo_pos_step = 25 {
draw_clear_alpha(BLACK, 1);

draw_sprite_ext(spr_bg_frame, 0, 0, 0, _w_scale, _h_scale, 0, c_white, 1);


gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);

draw_roundrect_ext((1920 - photo_pos) * _w_scale, 82 * _h_scale, (1920 - 84) * _w_scale, (1080 - 82) * _w_scale, 80  * _w_scale, 80 * _w_scale, false);
gpu_set_blendmode(bm_normal);
}

surface_reset_target();


//var _surf2 = surface_create(1920 * _w_scale, 1080 * _h_scale);

//surface_set_target(_surf2);

//draw_clear_alpha(WHITE, 1);

//gpu_set_blendmode(bm_subtract);
//draw_set_color(c_black);
//draw_roundrect_ext((82 + 40) * _w_scale, (82 + 40) * _h_scale, (82 + 916 - 41) * _w_scale, (82 + 916 - 100)  * _h_scale, 70 * _w_scale, 70 * _h_scale, false);
//gpu_set_blendmode(bm_normal);




//surface_reset_target();


//draw_surface(_surf2,0, 0);
draw_surface(_surf,0, 0);
surface_free(_surf);


//surface_free(_surf2);

draw_sprite_ext(spr_photo_frame, 0, (1920 - photo_pos) * _w_scale, 82 * _h_scale, _w_scale, _h_scale, rotate, c_white, 1);








