/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//if irandom_range(0, 5) = 0 {
//	male = true;
//} else {
//	male = false;
//}

sway_time = irandom(200);

angle_change_speed = 0.2

speed_min = 0.5
speed_max = 0.75

speed = random_range(speed_min,speed_max)

sprite = spr_sheephead_male;
tail_width = 185;
scale = 3

direction_array = [];
repeat (16) {
	array_push(direction_array, direction);
}
