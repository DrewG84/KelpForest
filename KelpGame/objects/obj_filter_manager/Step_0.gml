/// @description Insert description here
// You can write your code in this editor

fx_set_parameter(brightness_contrast, "g_ContrastIntensity", contrast);

fx_set_parameter(brightness_contrast, "g_ContrastBrightness", exposure);

if keyboard_check_pressed(vk_left) {
	exposure += 0.01;
}