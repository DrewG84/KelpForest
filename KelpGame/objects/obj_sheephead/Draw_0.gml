/// @description Insert description here
// You can write your code in this editor

var sway = 5 * (sin(0.003 * pi * sway_time));

var angle = degtorad(direction_array[0] - 90);
var xx = cos(angle) * (tail_width / scale);
var yy = cos(angle) * (tail_width / scale);

draw_sprite_ext(spr_sheephead_male, 2, x, y, y_scale / scale, 1 / scale, direction_array[0] - 90 + sway, c_white, 1);

draw_sprite_ext(spr_sheephead_male, 1, x, y, y_scale / scale, 1 / scale, direction_array[6] - 90 + (sway / 1.5), c_white, 1);

draw_sprite_ext(spr_sheephead_male, 0, x, y, y_scale / scale, 1 / scale, image_angle, c_white, 1);
