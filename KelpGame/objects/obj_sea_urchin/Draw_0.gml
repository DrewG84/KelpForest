/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < 4; i++) {
	draw_sprite_ext(spr_sea_urchin, i, x, y, (1 + 0.1 * sin(0.01 * pi * (arm_step + 15 * i))) / scale, (1 + 0.1 * sin(0.01 * pi * (arm_step + 15 * i))) / scale, rotate, c_white, 1);
}

