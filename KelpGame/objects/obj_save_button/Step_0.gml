/// @description Insert description here
// You can write your code in this editor
var _width = 220;
var _height = 100;

if point_in_rectangle(mouse_x, mouse_y, x - 10, y - 10, x + _width + 10, y + _height + 10) {
	hover = true;
	color = ACCENT_DARK;
	if hover != hover_prev {
		label = scribble("[wave][spr_save] Save[/]");
		label.starting_format("ft_slider_label", WHITE);
		label.align(fa_center, fa_middle);
	}
	if mouse_check_button_pressed(mb_left) && !instance_exists(obj_room_trans) {
		if surface_exists(obj_album_display.saving_surface) {
		surface_save_dialog(obj_album_display.saving_surface, "kelpography.png");
		surface_free(obj_album_display.saving_surface);
		}
	click_sound();
	}
	
	
	hover_prev = true;
} else {
	hover = false;
	color = ACCENT;
	if hover != hover_prev {
		label = scribble("[spr_save] Save");
		label.starting_format("ft_slider_label", WHITE);
		label.align(fa_center, fa_middle);
	}
	
	hover_prev = false;	
	
}