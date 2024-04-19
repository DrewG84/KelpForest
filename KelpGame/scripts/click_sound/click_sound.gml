// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function click_sound(){
	if global.play_sound = true {
		audio_play_sound(sd_click, 0, false, 2, 0,  random_range(0.8, 1.4));
	}
}