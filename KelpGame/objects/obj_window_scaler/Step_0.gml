/// @description Insert description here
// You can write your code in this editor
if (browser_width != width || browser_height != height)
    {
		width = min(base_width, browser_width);
		height = min(base_height, browser_height);
		scale_canvas(base_width, base_height, width, height, true);
		
		w_ratio = window_get_width() / base_width;
		h_ratio = window_get_height() / base_height;
		
		scribble_anim_wave(5 * w_ratio, 100, 0.1);
    }
	


