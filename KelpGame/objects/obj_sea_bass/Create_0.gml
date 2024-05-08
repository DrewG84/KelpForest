/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

sprite = spr_sea_bass;
name = "Giant Sea Bass";
tail_width = 185;
scale = 1.2



angle_change_speed = 0.02

friends_dist = 60
enemies_dist = 60

speed_min = 0.25
speed_max = 0.5

speed = random_range(speed_min,speed_max)

repeat (24) {
	array_push(direction_array, direction);
}

left_pad = 0;
top_pad = 0;
right_pad = 0;
bottom_pad = 0;
