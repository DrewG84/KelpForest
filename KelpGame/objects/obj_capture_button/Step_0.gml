/// @description Insert description here
// You can write your code in this editor
var _scale = obj_pan_zoom.scale;

var _window_x = camera_get_view_x(view_camera[0]);
var _window_y = camera_get_view_y(view_camera[0]);

if point_in_rectangle(mouse_x, mouse_y, _window_x + (1920 - 82 - 200) * _scale, _window_y + 82 * _scale, _window_x + (1920 - 82) * _scale, _window_y + (1080 - 82) * _scale) && global.draggable = true {

	hover = true;
	
	if hover_step = 0 && global.play_sound = true {
		
		audio_play_sound(sd_trill, 0, false, 0.6);
		
	}
	
	hover_step += 0.02;
	

} else {

	hover = false;
	if hover_step = 0.5 && global.play_sound = true {
		
		audio_play_sound(sd_trill_reverse, 0, false, 0.6);
		
	}
	
	hover_step -= 0.02;

}

hover_step = clamp(hover_step, 0, 1);

button_y = EaseInBack(lerp(1, 0, hover_step), 182, 720, 1);

text.scale(obj_window_scaler.w_ratio);
scribble_anim_wave(5 * obj_window_scaler.w_ratio, 100, 0.1)