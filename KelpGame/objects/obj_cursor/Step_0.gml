/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

if room = rm_camera {

if obj_zoom_slider.hover = true ||
	obj_zoom_slider.selected = true ||
	obj_focus_slider.hover = true ||
	obj_focus_slider.selected = true ||
	point_in_rectangle(window_mouse_get_x() - window_get_x(), window_mouse_get_y() - window_get_y(), WINDOW_X * _w_scale, 82 * _h_scale, (916 + WINDOW_X) * _w_scale,  (916 + 82) * _h_scale) ||
	obj_capture_button.hover = true {
		
		if mouse_check_button(mb_left) = true {
			//cursor_sprite = spr_cursor_click;
			window_set_cursor(cr_drag);
		} else {
			//cursor_sprite = spr_cursor_hover;
			window_set_cursor(cr_handpoint);
		}
	
	} else {
		//cursor_sprite = spr_cursor_point;
		window_set_cursor(cr_default);
	}
	
} 


if room = rm_edit {
	
	window_set_cursor(cr_default);
	
}