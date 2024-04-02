/// @description Insert description here
// You can write your code in this editor
var sway = sway_amount * (sin(0.001 * pi * sway_time));

shader_set(shd_kelp);
shader_set_uniform_f(u_amount, sway);
vertex_submit(vbuff, pr_trianglelist, texture);
shader_reset();


//draw_set_color(#93FFEE);
//draw_set_alpha(lerp(0.1, 0.2, _depth));
//draw_rectangle(0, 0, room_width, room_height, false);
//draw_set_alpha(1);