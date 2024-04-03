/// @description Insert description here
// You can write your code in this editor
if irandom_range(0, spawn_rate) = 0 {
	var camera_x = camera_get_view_x(camera);
	var camera_y = camera_get_view_y(camera);
	
	var camera_width = camera_get_view_width(camera);
	var camera_height = camera_get_view_height(camera);
	
	var xx = irandom_range(camera_x, camera_x + camera_width);
	var yy = irandom_range(camera_y, camera_y + camera_height);
	
	var _layer = choose("foreground", "fish1", "fish2", "fish3");
	
	instance_create_layer(xx, yy, _layer, obj_particle);
}