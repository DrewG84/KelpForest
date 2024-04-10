/// @description Insert description here
// You can write your code in this editor
var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

var _scale = obj_pan_zoom.scale;

var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

main_surface = surface_create(room_width, room_height);


surface_set_target(main_surface);
draw_rectangle_color(0, 0, room_width, room_height, #0AFFB1, #0AFFB1, #001C19, #001C19, false);
surface_reset_target();




for(var i = 0; i < array_length(layers); i += 1) {
	
	var _surf  = surface_create(room_width, room_height);

	surface_set_target(_surf);
	
	var _layer_instances = layer_get_all_elements(layers[i]);
	
	for(var j = 0; j < array_length(_layer_instances); j += 1) {
		var _instance = layer_instance_get_instance(_layer_instances[j]);
		
		with (_instance) {
			event_perform(ev_draw, 0);
		}
	}
	
	
	
	
	surface_reset_target();
	
	
	if obj_focus.downsamples[i] = 0 {
		surface_set_target(main_surface);
		draw_surface(_surf, 0,0);
		
	} else {
	var _premult_surf = surface_create(room_width, room_height);
	
	surface_set_target(_premult_surf);
	
	shader_set(shd_blur);
	var u_tex_size = shader_get_uniform(shd_blur, "texture_size");
	shader_set_uniform_f(u_tex_size, room_width, room_height);
	var u_kernel_size = shader_get_uniform(shd_blur, "blur_radius");
	var u_sample_count = shader_get_uniform(shd_blur, "sample_count");
	shader_set_uniform_f(u_kernel_size, obj_focus.downsamples[i]);
	shader_set_uniform_f(u_sample_count, 8);
	
	draw_surface(_surf, 0,0);
	
	
	shader_reset();
	
	//blur_area_draw(blur_area_id, _surf, BLUR_TYPE.GAUSSIAN, 0, 0, room_width, room_height, 0, 0, obj_focus.downsamples[i] / 100);
	
	surface_reset_target();
	
	
	surface_set_target(main_surface);
	
	gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);
	shader_set(shd_premult);
	draw_surface(_premult_surf, 0,0);
	shader_reset();
	gpu_set_blendmode(bm_normal);
	}
	
	
	
	if i < 3 {
		
	draw_set_color(blue_array[i]);
	draw_set_alpha(30/255);
	draw_rectangle(0, 0, room_width, room_width, false);
	draw_set_alpha(1);
		
	with (instance_find(obj_light_beams, i)) {
			event_perform(ev_draw, 0);
	}
	}
	
	surface_reset_target();
	surface_free(_surf);
	
}

//var _underwater = surface_create(room_width, room_height);
//surface_set_target(_underwater);
////draw_clear(#808080)
//draw_clear(c_black)
//shader_set(shd_UnderWater);

//var u_UW_intensity = shader_get_uniform(shd_UnderWater, "Intensity");
//shader_set_uniform_f(u_UW_intensity, 5);
//var u_UW_time = shader_get_uniform(shd_UnderWater, "Time");
//shader_set_uniform_f(u_UW_time, 100);

//draw_surface(main_surface, 0, 0);
//shader_reset()
//surface_reset_target();

//var _recolor = surface_create(room_width, room_height);
//surface_set_target(_recolor);
////draw_clear(#808080)
//draw_clear(c_black)
//shader_set(shd_colourise_shader);

//var u_col_intensity = shader_get_uniform(shd_colourise_shader, "g_Intensity");
//shader_set_uniform_f(u_col_intensity, 0.4);
//var u_col_tint = shader_get_uniform(shd_colourise_shader, "g_TintCol");
//shader_set_uniform_f(u_col_tint, 147, 255, 238, 255);


//draw_surface(_underwater, 0, 0);
//shader_reset()
//surface_reset_target();

surface_set_target(application_surface)
draw_clear(c_black);
draw_rectangle_color(0, 0, room_width, room_height, #0AFFB1, #0AFFB1, #001C19, #001C19, false);
var _surface_scale = (_scale / _w_scale);
repeat (3) {
	draw_surface_stretched_ext(main_surface, 0 - _window_x / _surface_scale, 0 - _window_y / _surface_scale, room_width / _surface_scale, room_height / _surface_scale, c_white, 1);
}
surface_reset_target();

show_debug_message(string(instance_number(obj_particle)))


