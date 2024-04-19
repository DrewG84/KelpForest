/// @description Insert description here
// You can write your code in this editor
if in = true {
	radius_anim += 1;
} else {
	radius_anim -= 1;
}

radius = EaseInBack(clamp(radius_anim, 0, 60), 0, 1, 60);

var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);
var _scale = 1;
var _x = 1920 - 82 - 82 - 62;
var _y = 82 + 780;

if point_in_circle(mouse_x, mouse_y, _window_x + _x * _scale,_window_y +  _y * _scale, (radius * 70) * _scale) 
&& !instance_exists(obj_confirm) {
	hover = true;
	color = ACCENT_DARK;
	if mouse_check_button_pressed(mb_left) {
		instance_create_layer(0,0, "Instances", obj_confirm, confirm_struct);
		click_sound();
		
		//room_goto(rm_camera)
		
	}
	
} else {
	hover = false;
	color = ACCENT;
	
}

if hover = true {
	hover_anim += 0.1;	
} else {
	hover_anim = 0;	
}