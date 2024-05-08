/// @description Insert description here
// You can write your code in this editor
var _width = 300;
var _height = 100;



if point_in_rectangle(mouse_x, mouse_y, x - 10, y - 10, x + _width + 10, y + _height + 10) {
	hover = true;
	color = ACCENT_DARK;
	if hover != hover_prev {
		label = scribble("[wave]Let's Go! [spr_continue,1][/]");
		label.starting_format("ft_slider_label", WHITE);
		label.align(fa_center, fa_middle);
	}
	if mouse_check_button_pressed(mb_left) && !instance_exists(obj_room_trans) {
		var _struct = {
		grow: false,
		new_room_val: rm_camera,
	}
	
	
	click_sound();
	instance_create_depth(0,0, depth - 100, obj_room_trans, _struct);
	}
	
	
	hover_prev = true;
} else {
	hover = false;
	color = ACCENT;
	if hover != hover_prev {
		label = scribble("Let's Go! [spr_continue,1]");
		label.starting_format("ft_slider_label", WHITE);
		label.align(fa_center, fa_middle);
	}
	
	hover_prev = false;	
	
}