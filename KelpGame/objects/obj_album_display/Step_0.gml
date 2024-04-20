/// @description Insert description here
// You can write your code in this editor
var _max = 60;
photo_pos_step += 0.5;

photo_pos_step = clamp(photo_pos_step, 0, _max);


photo_pos = EaseInBack(photo_pos_step, 0, 1200, _max);

rotate = EaseInBack(lerp(_max, 0, photo_pos_step / _max), 0, -90, _max);