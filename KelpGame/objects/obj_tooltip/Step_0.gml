/// @description Insert description here
// You can write your code in this editor

if point_distance(initial_view_x, initial_view_y, obj_pan_zoom.view_x, obj_pan_zoom.view_y) > 20 {

	up = false;
	
}

var _max = 100;
if up = true {
	step -= 1;	
} else {
	step += 1;
}

step = clamp(step, 0, _max);

y = EaseInBack(step, 894 + 40, 1080 + 80, _max, 0.7);

//if step = _max && up = false {
	
//}