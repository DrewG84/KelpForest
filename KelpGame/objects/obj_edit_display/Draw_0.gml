/// @description Insert description here
// You can write your code in this editor
var _array_pos = array_length(global.album) - 1;

var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

var album_pos = global.album[_array_pos];

if album_pos != -1 {
	//draw_sprite_ext(global.album[_array_pos].image, 0, 82, 82, 1, 1, 0, c_white, 1);
	//var _width = sprite_get_width(global.album[_array_pos].image) / 916;
	//draw_sprite_stretched(global.album[_array_pos].image, 0, 1920 - 82 - 540, 540, 916 - 80, 916 - 80);
	
	var _sprite = album_pos.image;
	//draw_sprite_stretched(global.album[_array_pos].image, 0, 1920 - photo_pos + 40, 82 + 40, 820 - 80, 820 - 80);
	draw_sprite_ext(_sprite, 0, 1920 - photo_pos + 40, 82 + 40, 740 / sprite_get_width(_sprite) ,740 / sprite_get_height(_sprite), rotate, c_white, 1);
}

for (var i = 0; i < array_length(album_pos.species_array); i++) {
	
	var _scale = album_pos.scale;
	var _struct = album_pos.species_array[i];
	
	draw_text(lerp(0, 740, (_struct.x_pos / _scale) / 916) + photo_pos + 160, lerp(0, 740, (_struct.y_pos / _scale) / 916) + 82 + 40, string(_struct.name));
}



//draw_text(100, 100, string(global.album))