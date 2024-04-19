/// @description Insert description here
// You can write your code in this editor
var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);
var _scale = 1;
if instance_exists(obj_pan_zoom) {
	_scale = obj_pan_zoom.scale;	
} else {
	_scale = 1;	
}


	
	step += 1;
	rotate = 5 * sin(0.05 * step);
	scalar = 1 + 0.1 * sin(0.1 * step);
	




if point_in_circle(mouse_x, mouse_y, _window_x + x * _scale,_window_y +  y * _scale, 60 * _scale)
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

x = 132 + 10;
y = 1080 - 82 - 60 - 70 - 50 - 20;