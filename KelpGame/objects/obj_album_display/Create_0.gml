/// @description Insert description here
// You can write your code in this editor

if is_undefined(array_pos) {
	array_pos = array_length(global.album) - 1;
}

photo_pos_step = 0;
photo_pos = 0;
rotate = 0;

saving_surface = -1;