/// @description Insert description here
// You can write your code in this editor
var _scale = obj_pan_zoom.scale;

var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

if point_in_rectangle(mouse_x, mouse_y, _window_x + (1920 - 82 - 200) * _scale, _window_y + 82 * _scale, _window_x + (1920 - 82) * _scale, _window_y + (1080 - 82) * _scale) && global.draggable = true {

	hover = true;

} else {

	hover = false;

}