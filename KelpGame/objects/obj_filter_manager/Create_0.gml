/// @description Insert description here
// You can write your code in this editor

brightness_contrast_fx = layer_get_fx("brightness_contrast");
exposure = 1.1;
sld_exposure_struct = {
	value: 1.1,
	min_val: 0,
	mid_val: 1.1,
	max_val: 2
}

contrast = 1.2;
sld_contrast_struct = {
	value: 1.2,
	min_val: 0,
	mid_val: 1.2,
	max_val: 2
}

bloom_fx = layer_get_fx("bloom");
bloom = 0;
sld_bloom_struct = {
	value: 0,
	min_val: 0,
	mid_val: 0.5,
	max_val: 1
}

hue_sat_fx = layer_get_fx("hue_sat");

hue = 0;
sld_hue_struct = {
	value: 0,
	min_val: 0,
	mid_val: 0.45,
	max_val: 0.9
}

saturation = 1;
sld_saturation_struct = {
	value: 1,
	min_val: 0,
	mid_val: 1,
	max_val: 3
}

tint_fx = layer_get_fx("tint");
tint = 0;
sld_tint_struct = {
	value: 0,
	min_val: 0,
	mid_val: 255 / 2,
	max_val: 255
}

tint_intensity = 0;