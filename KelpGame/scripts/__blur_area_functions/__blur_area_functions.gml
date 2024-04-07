
/*--------------------------------------
Blur Library - (C) 2022 Foxy Of Jungle
https://foxyofjungle.itch.io/
--------------------------------------*/

// blur type
enum BLUR_TYPE {
	GAUSSIAN,
	NOISE,
	BAKED
}

// blur shaders uniforms
global.__blur_shaders_uni = {
	blur_gaussian_size_radius : shader_get_uniform(__ba_sh_blur_gaussian, "size_radius"),
	blur_noise_radius : shader_get_uniform(__ba_sh_blur_noise, "radius"),
	blur_baked_size_radius : shader_get_uniform(__ba_sh_blur_baked, "size_radius"),
	blur_baked_direction : shader_get_uniform(__ba_sh_blur_baked, "direction"),
}
#macro __blur_sh_uni global.__blur_shaders_uni

// ---------------------

function blur_area_create() {
	static _blur_id = function() constructor {
		_surf_ping = -1;
		_surf_pong = -1;
		_surf_full = -1;
		_downscale = 0;
	}
	return new _blur_id();
}

function blur_area_destroy(blur_id) {
	if is_struct(blur_id) {
		surface_free(blur_id._surf_ping);
		surface_free(blur_id._surf_pong);
		if surface_exists(blur_id._surf_full) surface_free(blur_id._surf_full);
		delete blur_id;
	}
}

function blur_area_exists(blur_id) {
	return is_struct(blur_id);
}


global.__blur_type = [
	//BLUR_TYPE.GAUSSIAN;
	function(ping, pong, w, h, radius) {
		shader_set(__ba_sh_blur_gaussian);
		shader_set_uniform_f(__blur_sh_uni.blur_gaussian_size_radius, w, h, radius);
		
		surface_set_target(pong);
		draw_surface(ping, 0, 0);
		surface_reset_target();
		
		surface_set_target(ping);
		draw_surface(pong, 0, 0);
		surface_reset_target();
		shader_reset();
	},
	//BLUR_TYPE.NOISE;
	function(ping, pong, w, h, radius) {
		shader_set(__ba_sh_blur_noise);
		shader_set_uniform_f(__blur_sh_uni.blur_noise_radius, radius);
		
		surface_set_target(pong);
		draw_surface(ping, 0, 0);
		surface_reset_target();
		
		surface_set_target(ping);
		draw_surface(pong, 0, 0);
		surface_reset_target();
		shader_reset();
	},
	//BLUR_TYPE.BAKED;
	function(ping, pong, w, h, radius) {
		shader_set(__ba_sh_blur_baked);
		shader_set_uniform_f(__blur_sh_uni.blur_baked_size_radius, w, h, radius);
		shader_set_uniform_f(__blur_sh_uni.blur_baked_direction, 1, 0);
		
		surface_set_target(pong);
		draw_surface(ping, 0, 0);
		surface_reset_target();
		
		shader_set_uniform_f(__blur_sh_uni.blur_baked_direction, 0, 1);
		surface_set_target(ping);
		draw_surface(pong, 0, 0);
		surface_reset_target();
		shader_reset();
	},
];


function blur_area_draw(blur_id, surface, blur_type, x, y, w, h, x_offset, y_offset, radius, downscale=0.5, id_return=false, color=c_white, alpha=1) {
	var _tex_filter_old = gpu_get_tex_filter();
	var _blend_enable_old = gpu_get_blendenable();
	if (alpha == 1) gpu_set_blendenable(false);
	gpu_set_tex_filter(true);
	if (downscale != blur_id._downscale) {
		surface_free(blur_id._surf_ping);
		surface_free(blur_id._surf_pong);
		blur_id._downscale = downscale;
	}
	if !surface_exists(blur_id._surf_ping) {
		var _depth_disable_old = surface_get_depth_disable();
		surface_depth_disable(true);
		blur_id._surf_ping = surface_create(w*downscale, h*downscale);
		blur_id._surf_pong = surface_create(w*downscale, h*downscale);
		surface_depth_disable(_depth_disable_old);
	}
	
	// downscale
	surface_set_target(blur_id._surf_ping);
	draw_surface_part_ext(surface, x-x_offset, y-y_offset, w, h, 0, 0, (w*downscale)/w, (h*downscale)/h, c_white, 1);
	surface_reset_target();
	
	// apply blur shader
	global.__blur_type[blur_type](blur_id._surf_ping, blur_id._surf_pong, w, h, radius);
	
	// draw blur
	if (id_return) {
		if !surface_exists(blur_id._surf_full) blur_id._surf_full = surface_create(w, h);
		surface_set_target(blur_id._surf_full);
		draw_surface_stretched_ext(blur_id._surf_ping, 0, 0, w, h, color, alpha);
		surface_reset_target()
		gpu_set_tex_filter(_tex_filter_old);
		gpu_set_blendenable(_blend_enable_old);
		return blur_id._surf_full;
	} else {
		draw_surface_stretched_ext(blur_id._surf_ping, x, y, w, h, color, alpha);
		gpu_set_tex_filter(_tex_filter_old);
		gpu_set_blendenable(_blend_enable_old);
	}
}

function blur_draw_part(id_return, x, y, w, h, x_offset, y_offset) {
	var _tf = gpu_get_tex_filter();
	gpu_set_blendenable(false);
	draw_surface_part(id_return, x-x_offset, y-y_offset, w, h, x, y);
	gpu_set_blendenable(_tf);
}

function blur_draw_part_ext(id_return, x, y, w, h, x_offset, y_offset, xscale, yscale, color, alpha) {
	var _tf = gpu_get_tex_filter();
	gpu_set_blendenable(false);
	draw_surface_part_ext(id_return, x-x_offset, y-y_offset, w, h, x, y, xscale, yscale, color, alpha);
	gpu_set_blendenable(_tf);
}

// the function below is not working as expected...
/*function blur_draw_part_stretched(id_return, x1, y1, x2, y2, x_offset, y_offset) {
	var _tf = gpu_get_tex_filter();
	gpu_set_blendenable(false);
	draw_surface_part(id_return, x1-x_offset, y1-y_offset, x1+(x2-x1), y1+(y2-y1), x1, y1);
	gpu_set_blendenable(_tf);
}*/


function blur_sprite_create(sprite, subimg, blur_type, w, h, radius, downscale=0.5, color=c_white, alpha=1) {
	var _tex_filter_old = gpu_get_tex_filter();
	var _blend_enable_old = gpu_get_blendenable();
	if (alpha == 1) gpu_set_blendenable(false);
	gpu_set_tex_filter(true);
	
	var _depth_disable_old = surface_get_depth_disable();
	surface_depth_disable(true);
	var _surf_ping = surface_create(w*downscale, h*downscale);
	var _surf_pong = surface_create(w*downscale, h*downscale);
	surface_depth_disable(_depth_disable_old);
	
	// downscale
	surface_set_target(_surf_ping);
	draw_sprite_part_ext(sprite, subimg, 0, 0, w, h, 0, 0, (w*downscale)/w, (h*downscale)/h, c_white, 1);
	surface_reset_target();
	
	// apply blur shader
	global.__blur_type[blur_type](_surf_ping, _surf_pong, w, h, radius);
	
	// draw blur
	var _surf_full = surface_create(w, h);
	surface_set_target(_surf_full);
	draw_surface_stretched_ext(_surf_ping, 0, 0, w, h, color, alpha);
	surface_reset_target()
	
	// render sprite
	var surf_sprite_blur = sprite_create_from_surface(_surf_full, 0, 0, w, h, 0, 0, 0, 0);
	gpu_set_tex_filter(_tex_filter_old);
	gpu_set_blendenable(_blend_enable_old);
	surface_free(_surf_ping);
	surface_free(_surf_pong);
	surface_free(_surf_full);
	
	return surf_sprite_blur;
}
