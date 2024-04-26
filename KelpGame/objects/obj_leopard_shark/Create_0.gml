/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


	sprite = spr_leopard_shark;
	name = "Leopard Shark";
	tail_width = 250;
	scale = 1.1
	
	direction = choose(0, 180);



angle_change_speed = 0.02

friends_dist = 60
enemies_dist = 30

speed_min = 0.5
speed_max = 0.75

speed = random_range(speed_min,speed_max)

repeat (16) {
	array_push(direction_array, direction);
}
