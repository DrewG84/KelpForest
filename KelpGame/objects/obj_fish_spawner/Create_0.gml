/// @description Insert description here
// You can write your code in this editor

repeat(30)
{
	instance_create_layer(irandom(room_width),irandom(room_height), choose("fish1", "fish2", "fish3"), obj_sheephead)
}