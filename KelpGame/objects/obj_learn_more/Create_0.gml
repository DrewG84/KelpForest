/// @description Insert description here
// You can write your code in this editor
array_pos = obj_album_display.array_pos;
var album_pos = global.album[array_pos];

if array_length(album_pos.species_array) = 0 {
	action = false;
} else {
	action = true;
}

if action = true {
x = 1290 + 40 + 10;
y = 1080 - 82 - 100 - 10;

hover = false;
hover_prev = false;

color = ACCENT;

label = scribble("[spr_mba] Learn");
label.starting_format("ft_slider_label", WHITE);
label.align(fa_center, fa_middle);
}