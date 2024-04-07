/// @description Insert description here
// You can write your code in this editor

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
	//var u_tex_size = shader_get_uniform(shd_blur, "texture_size");
	//shader_set_uniform_f(u_tex_size, room_width, room_height);
	//var u_kernel_size = shader_get_uniform(shd_blur, "blur_radius");
	//var u_sample_count = shader_get_uniform(shd_blur, "sample_count");
	//shader_set_uniform_f(u_kernel_size, obj_focus.downsamples[i]);
	//shader_set_uniform_f(u_sample_count, 8);
	
	draw_surface(_surf, 0,0);
	
	shader_reset();
	
	surface_reset_target();
	
	
	surface_set_target(main_surface);
	
	gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);
	shader_set(shd_premult);
	draw_surface(_premult_surf, 0,0);
	shader_reset();
	gpu_set_blendmode(bm_normal);
	}
	
	draw_set_color(#7FC4AE);
	draw_set_alpha(30/255);
	draw_rectangle(0, 0, room_width, room_width, false);
	draw_set_alpha(1);
	
	if i < 3 {
	with (instance_find(obj_light_beams, i)) {
			event_perform(ev_draw, 0);
	}
	}
	
	surface_reset_target();
	surface_free(_surf);
	
}



photo.image = sprite_create_from_surface(main_surface,0, 0, 916, 916, false, false, 0, 0);