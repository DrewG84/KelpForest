/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


	sprite = spr_anchovy;
	name = "Northern Anchovy";
	tail_width = 125;
	scale = 3.2
	
friends_dist = 200
enemies_dist = 20



angle_change_speed = 0.3

speed_min = 0.75
speed_max = 1.1

speed = random_range(speed_min,speed_max)

repeat (16) {
	array_push(direction_array, direction);
}
