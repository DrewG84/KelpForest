/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

sprite = spr_garibaldi;
name = "Garibaldi";
tail_width = 185;
scale = 5



angle_change_speed = 0.1
friends_dist = 100
enemies_dist = 20
enemies_dist = 200

speed_min = 0.5
speed_max = 0.5

speed = random_range(speed_min,speed_max)

repeat (24) {
	array_push(direction_array, direction);
}
