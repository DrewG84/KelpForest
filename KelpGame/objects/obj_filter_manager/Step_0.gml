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



if keyboard_check_pressed(vk_left) {
	tint -= 5;
}
if keyboard_check_pressed(vk_right) {
	tint += 5;
}