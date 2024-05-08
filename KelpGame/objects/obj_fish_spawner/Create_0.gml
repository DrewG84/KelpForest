/// @description Insert description here
// You can write your code in this editor

repeat(12)
{
	instance_create_layer(irandom(room_width),irandom(room_height), choose("fish1", "fish2", "foreground"), obj_sheephead)
}

repeat(4)
{
	instance_create_layer(irandom(room_width),irandom_range(500, room_height), choose("fish1", "fish2", "foreground"), obj_garibaldi)
}

repeat(120)
{
	instance_create_layer(irandom(room_width),irandom(room_height), choose("fish1", "fish2", "fish3", "foreground"), obj_anchovy)
}

repeat(2)
{
	instance_create_layer(irandom(room_width),irandom_range(500, room_height), choose("fish1", "foreground"), obj_leopard_shark)
}

repeat(1)
{
	instance_create_layer(irandom(room_width),irandom_range(500, room_height), choose("fish1", "foreground"), obj_sea_bass)
}
