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


if state = true {
	
	step += 1;
	rotate = 5 * sin(0.05 * step);
	scalar = 1 + 0.1 * sin(0.1 * step);
	
} else {
	step = 0;
	rotate = 0;
	scalar = 1;
}




if point_in_circle(mouse_x, mouse_y, _window_x + x * _scale,_window_y +  y * _scale, 50 * _scale) 
&& !instance_exists(obj_confirm) {
	hover = true;
	color = YELLOW_DARK;
	if mouse_check_button_pressed(mb_left) {
		if state = false {
			state = true;
		} else {
			state = false;
		}
	}
	
} else {
	hover = false;
	color = YELLOW;
}

x = 132;
y = 1080 - 82 - 50;