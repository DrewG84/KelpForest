/// @description Insert description here
// You can write your code in this editor
var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);
var _scale = obj_pan_zoom.scale;

photo.image = sprite_create_from_surface(application_surface, WINDOW_X, 82, 916, 916, false, false, 0, 0);