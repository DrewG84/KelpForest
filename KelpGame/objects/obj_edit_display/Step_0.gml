/// @description Insert description here
// You can write your code in this editor

var _max = 100;
photo_pos_step += 1;

photo_pos_step = clamp(photo_pos_step, 0, _max);


photo_pos = EaseInBack(photo_pos_step, 0, 820 + 82, _max);

rotate = EaseInBack(lerp(100, 0, photo_pos_step / 100), 0, 90, _max);



if flash > 0 && dis = true {
	flash -= 0.05;
}
