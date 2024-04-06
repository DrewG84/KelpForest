/// @description Insert description here
// You can write your code in this editor
var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

var _scalar = 4;

var _scale = obj_pan_zoom.scale;


if photo.image = -1 {
var temp_surf = -1;

if !surface_exists(temp_surf) {
temp_surf = surface_create(1920 * _scalar, 1080 * _scalar);
}

if surface_exists(temp_surf) {	
	surface_set_target(temp_surf);
	
	draw_clear(c_white);
	
	var _w_scale = obj_window_scaler.w_ratio;
	
	var app_x_scale = 1920 / window_get_width();
	
	var final_scale = _scalar / (_w_scale);
	
	repeat (5) {
	draw_surface_ext(application_surface, 0, 0, final_scale, final_scale, 0, c_white, 1);
}
	
	surface_reset_target();
	
	photo.image = sprite_create_from_surface(temp_surf, WINDOW_X, 82, 916 * _scalar, 916 * _scalar, false, false, 0, 0);
	
	surface_free(temp_surf);
}
}


