/// @description Insert description here
// You can write your code in this editor
var sway = sway_amount * (sin(0.001 * pi * sway_time));

shader_set(shd_kelp);
shader_set_uniform_f(u_amount, sway);
vertex_submit(vbuff, pr_trianglelist, texture);
shader_reset();