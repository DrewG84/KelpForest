/// @description Insert description here
// You can write your code in this editor

var sway = sway_amount * (sin(0.001 * pi * sway_time));


gpu_set_blendmode(bm_add);
shader_set(shd_light_beams);
shader_set_uniform_f(u_amount, sway);
vertex_submit(vbuff, pr_trianglelist, -1);
shader_reset();
gpu_set_blendmode(bm_normal);


//if instance_exists(obj_capture) {
//	repeat (1) {
		
//		gpu_set_blendmode(bm_add);
//		shader_set(shd_light_beams);
//shader_set_uniform_f(u_amount, sway);
//vertex_submit(vbuff, pr_trianglelist, -1);
//shader_reset();

//gpu_set_blendmode(bm_normal);
//	}
//}