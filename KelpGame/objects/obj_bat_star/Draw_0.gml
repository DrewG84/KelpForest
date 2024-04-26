/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < 5; i++) {
	draw_sprite_ext(spr_bat_star, 1, x, y, 1 / scale, 1 / scale, rotate + (i * 72), c_white, 1);
}

for (var i = 0; i < 5; i++) {
	draw_sprite_ext(spr_bat_star, 0, x, y, 1 / scale, (1 + 0.1 * sin(0.01 * pi * (arm_step + 20 * i))) / scale, rotate + (i * 72), c_white, 1);
}