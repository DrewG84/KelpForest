/// @description Insert description here
// You can write your code in this editor

repeat(20)
{
	instance_create_layer(irandom(room_width),irandom(room_height), choose("fish1", "fish2"), obj_sheephead)
}

repeat(5)
{
	instance_create_layer(irandom(room_width),irandom_range(500, room_height), choose("fish1", "fish2"), obj_garibaldi)
}