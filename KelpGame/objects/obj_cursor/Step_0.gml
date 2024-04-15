/// @description Insert description here
// You can write your code in this editor
if obj_zoom_slider.hover = true ||
	obj_focus_slider.hover = true ||
	point_in_rectangle(window_mouse_get_x() - window_get_x(), window_mouse_get_y() - window_get_y(), WINDOW_X * _w_scale, 82 * _h_scale, (916 + WINDOW_X) * _w_scale,  (916 + 82) * _h_scale) ||
	obj_capture_button.hover = true {
		
		if mouse_check_button(mb_left) = true {
			cursor = "hover";	
		} else {
			cursor = "click";	
		}
	
	} else {
		cursor = "default";	
	}