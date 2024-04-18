/// @description Insert description here
// You can write your code in this editor
var _w_scale = obj_window_scaler.w_ratio;
var _h_scale = obj_window_scaler.h_ratio;

once = 0;
max_rad = 1520;

if !variable_instance_exists(id, "grow") {
	grow = true;
}


	circle_x = 1920 / 2;
	circle_y = 1080 / 2;

if grow = true {
	radius = 0;
	grow_amount = 20;
} else {
	radius = max_rad;
	grow_amount = -20;
}