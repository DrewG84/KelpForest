/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if irandom_range(0, 5) = 0 {
	sprite = spr_sheephead_male;
	name = "California Sheephead (Male)";
	tail_width = 185;
	scale = 3
} else {
	sprite = spr_sheephead_female;
	name = "California Sheephead (Female)";
	tail_width = 185;
	scale = 4
}



angle_change_speed = 0.2

speed_min = 0.5
speed_max = 0.75

speed = random_range(speed_min,speed_max)

repeat (16) {
	array_push(direction_array, direction);
}
