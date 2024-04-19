/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(sd_music) && global.play_sound = true {
	audio_play_sound(sd_music, 0, true);
}