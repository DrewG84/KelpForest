/// @description Insert description here
// You can write your code in this editor


var album_pos = global.album[array_pos];

var _sprite = album_pos.image;

draw_sprite_ext(_sprite, 0, FX_X + 40, 82 + 40 + 1200 - photo_pos, 740 / sprite_get_width(_sprite), 740 / sprite_get_height(_sprite), rotate, c_white, 1);

draw_sprite_ext(spr_photo_frame, 0, (FX_X), 82 + 1200 - photo_pos, 1, 1, rotate, c_white, 1);

//saving surface
if !surface_exists(saving_surface) {
	saving_surface = surface_create(820, 916);
}

surface_set_target(saving_surface);
draw_clear_alpha(BLACK, 0);


 
gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);
	shader_set(shd_premult);
	repeat 30 {
	draw_sprite_ext(_sprite, 0, 40, 40, 740 / sprite_get_width(_sprite), 740 / sprite_get_height(_sprite), 0, c_white, 1);
	}
draw_sprite_ext(spr_photo_frame, 0, 0, 0, 1, 1, 0, c_white, 1);
	shader_reset();


gpu_set_blendmode(bm_normal)
surface_reset_target();


//for (var i = 0; i < array_length(album_pos.species_array); i++) {
	
//	var _scale = album_pos.scale;
//	var _struct = album_pos.species_array[i];
	
//	draw_set_font(ft_slider_label);
//	draw_text(lerp(0, 740, (_struct.x_pos / _scale) / 916) + FX_X + 40, lerp(0, 740, (_struct.y_pos / _scale) / 916) + 82 + 40, string(_struct.name));
//}

if !is_undefined(album_pos.star) {
	var _scale = album_pos.scale;
	var _struct = album_pos.star;
	
	draw_set_font(ft_slider_label);
	
	if lerp(0, 740,(_struct.y_pos / _scale) / 916) - (120 * (1 + _scale / 2)) > 0 {
	draw_sprite_ext(spr_star_subject, 0, lerp(0, 740, (_struct.x_pos / _scale) / 916) + FX_X + 40, lerp(0, 740, (_struct.y_pos / _scale) / 916) + 82 + 40 + (1200 - photo_pos) - (60 * (1 + _scale / 2)), 1, 1, 0, c_white, 1);
	} else {
	draw_sprite_ext(spr_star_subject, 0, lerp(0, 740, (_struct.x_pos / _scale) / 916) + FX_X + 40, lerp(0, 740, (_struct.y_pos / _scale) / 916) + 82 + 40 + (1200 - photo_pos) + (60 * (1 + _scale / 2)), 1, -1, 0, c_white, 1);
	}

	//draw_text(lerp(0, 740, (_struct.x_pos / _scale) / 916) + FX_X + 40, lerp(0, 740, (_struct.y_pos / _scale) / 916) + 82 + 40 - (80 * _scale), string(_struct.name));
}

