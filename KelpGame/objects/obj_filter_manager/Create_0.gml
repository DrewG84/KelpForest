/// @description Insert description here
// You can write your code in this editor

brightness_contrast_fx = layer_get_fx("brightness_contrast");
exposure = 1.05;
sld_exposure_struct = {
	name: "Exposure",
	val: 1.05,
	min_val: 0.8,
	mid_val: 1.05,
	max_val: 1.3
}

contrast = 1.2;
sld_contrast_struct = {
	name: "Contrast",
	val: 1.25,
	min_val: 0.5,
	mid_val: 1.25,
	max_val: 2
}

bloom_fx = layer_get_fx("bloom");
bloom = 0;
sld_bloom_struct = {
	name: "Bloom",
	val: 0,
	min_val: 0,
	mid_val: 0.35,
	max_val: 0.7
}

hue_sat_fx = layer_get_fx("hue_sat");

hue = 0;
sld_hue_struct = {
	name: "Hue",
	val: 0,
	min_val: 0,
	mid_val: 0.35,
	max_val: 0.7
}

saturation = 1;
sld_saturation_struct = {
	name: "Saturation",
	val: 1,
	min_val: 0,
	mid_val: 1,
	max_val: 3
}

tint_fx = layer_get_fx("tint");
tint = 0;
sld_tint_struct = {
	name: "Tint",
	val: 0,
	min_val: 0,
	mid_val: 225 / 2,
	max_val: 225
}

slider_array = [sld_exposure_struct, sld_contrast_struct, sld_saturation_struct, sld_tint_struct, sld_bloom_struct];

for (var i = 0; i < array_length(slider_array); i ++) {
	var _struct = slider_array[i];
	slider_array[i].slider = instance_create_layer(FX_X, i * 189, "Instances", obj_filter_slider_par, _struct);
}

tint_intensity = 0;