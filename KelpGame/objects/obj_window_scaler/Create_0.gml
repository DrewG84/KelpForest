/// @description Insert description here
// You can write your code in this editor
base_width = 1920;
base_height = 1080;
width = base_width;
height = base_height;

w_ratio = base_width / width;
h_ratio = base_height / height;

repeat(50)
{
	instance_create_depth(irandom(room_width),irandom(room_height),0,obj_flock_parent)
}