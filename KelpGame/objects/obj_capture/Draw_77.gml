/// @description Insert description here
// You can write your code in this editor
var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

var _scale = obj_pan_zoom.scale;

var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

photo.image = sprite_create_from_surface(application_surface, WINDOW_X * _w_scale, 82 * _w_scale, 916 * _w_scale, 916 * _w_scale, false, true, 0, 0);
surface_free(main_surface);