/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_green);
for (var i = 0; i < a_length; i += 1) {
	draw_rectangle(kelp_array[i], 0, kelp_array[i] + 40, room_height, false);
}