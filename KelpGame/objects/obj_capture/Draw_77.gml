/// @description Insert description here
// You can write your code in this editor
var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

var _scale = obj_pan_zoom.scale;

var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

photo.image = sprite_create_from_surface(application_surface, WINDOW_X * _w_scale, 82 * _w_scale, 916 * _w_scale, 916 * _w_scale, false, true, 0, 0);
surface_free(main_surface);

if array_length(photo.species_array) > 0 {
array_sort(photo.species_array, function(elm1, elm2)
{
	var middle_x = sprite_get_width(photo.image) / 2;
	var middle_y = sprite_get_height(photo.image) / 2;
    return point_distance(elm1.x_pos, elm1.y_pos, middle_x, middle_y) - point_distance(elm2.x_pos, elm2.y_pos, middle_x, middle_y);
});

photo.star = photo.species_array[0]


show_debug_message(string(photo.star))
}
//show_debug_message(string(sprite_get_width(photo.image)) + ", " + string(sprite_get_height(photo.image)))