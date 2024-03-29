/// @description Insert description here
// You can write your code in this editor





draw_clear_alpha(c_black, 1);
draw_set_color(c_black);
draw_rectangle(0, 0, 1920, 1080, false)
//(bm_subtract);
draw_set_color(c_white);
draw_roundrect_ext(82, 82, 82 + 916, 82 + 916, 80, 80, false);
//gpu_set_blendmode(bm_normal);

for (var i = 0; i < 10; i += 1) {
	draw_set_color(merge_color(c_red, c_yellow, i/10));
	draw_circle(i * 200, y_array[i], 50, false);
}