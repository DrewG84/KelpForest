/// @description Insert description here
// You can write your code in this editor
length = array_length(global.album);
main_surface = -1;

photo = {
	image: -1,
	species_array: [],
}

layers = ["fish3", "fish2", "fish1", "foreground"];
radius_array = [];


for(var i = 0; i < array_length(layers); i += 1) {
	
	var _fx = layer_get_fx(layers[i]);
	fx_set_parameter(_fx, "g_RecursiveBlurQuality", 50);
	fx_set_parameter(_fx, "g_RecursiveBlurGamma", 1);
	
	var radius = fx_get_parameter(_fx, "g_RecursiveBlurRadius");
	
	array_push(radius_array, radius);
	
	fx_set_parameter(_fx, "g_RecursiveBlurRadius", radius);

}
show_debug_message(string(radius_array))

var u_tex_size = shader_get_uniform(shd_blur, "texture_size");
	shader_set_uniform_f(u_tex_size, room_width, room_height);
	var u_kernel_size = shader_get_uniform(shd_blur, "blur_radius");
	var u_sample_count = shader_get_uniform(shd_blur, "sample_count");
	shader_set_uniform_f(u_kernel_size, obj_focus.downsamples[i]);
	shader_set_uniform_f(u_sample_count, 8);