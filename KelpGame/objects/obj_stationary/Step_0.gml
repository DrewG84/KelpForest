/// @description Insert description here
// You can write your code in this editor

var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

var _scale = obj_pan_zoom.scale;
var left = _window_x + (WINDOW_X) * _scale;
var top = _window_y + (82 * _scale);
var right = _window_x + (WINDOW_X + 916) * _scale;
var bottom = _window_y + (82 + 916) * _scale;

if point_in_rectangle(x, y, left, top, right, bottom)
&& layer_fx_is_enabled(layer) = false {

	in_cam = true;
	
} else {
	
	in_cam = false;	
}