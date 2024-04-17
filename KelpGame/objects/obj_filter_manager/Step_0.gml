/// @description Insert description here
// You can write your code in this editor

fx_set_parameter(brightness_contrast_fx, "g_ContrastIntensity", contrast);

fx_set_parameter(brightness_contrast_fx, "g_ContrastBrightness", exposure);

fx_set_parameter(bloom_fx, "g_GlowIntensity", bloom);

fx_set_parameter(hue_sat_fx, "_HueShift", hue);

fx_set_parameter(hue_sat_fx, "g_HueSaturation", saturation);

var _tint_create = make_color_hsv(tint, 255, 255);
var _tint_red = color_get_red(_tint_create);
var _tint_green = color_get_green(_tint_create);
var _tint_blue = color_get_blue(_tint_create);
fx_set_parameter(tint_fx, "g_TintCol", [_tint_red / 255, _tint_green / 255, _tint_blue / 255]);

if tint = 0 {
	tint_intensity = 0;
} else {
	tint_intensity = 0.4;
}
fx_set_parameter(tint_fx, "g_Intensity", tint_intensity);


if obj_edit_display.rotate = 0 {
for (var i = 0; i < array_length(slider_array); i ++) {
	var _struct = slider_array[i];
	var _slider_val = 0;
	
	if _struct.slider.value < 0.5 {
		_slider_val = lerp(_struct.min_val, _struct.mid_val, _struct.slider.value * 2);
	} else {
		_slider_val = lerp(_struct.mid_val, _struct.max_val, (_struct.slider.value - 0.5) * 2);
	}
	
	switch(i) {
		case 0:
			exposure = _slider_val;
		break;
		case 1:
			contrast = _slider_val;
		break;
		case 2:
			saturation = _slider_val;
		break;
		case 3:
			tint = _slider_val;
		break;
		case 4:
			bloom = _slider_val;
		break;
	}
}
} else {
	exposure = 1;
	contrast = 1;
}