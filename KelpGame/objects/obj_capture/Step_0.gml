/// @description Insert description here
// You can write your code in this editor
if photo.image != -1 {
	for(var i = 0; i < array_length(layers); i += 1) {
	
	var _fx = layer_get_fx(layers[i]);
	fx_set_parameter(_fx, "g_RecursiveBlurQuality", 1);

	}	

	
	array_push(global.album, photo);
	room_goto(rm_edit);
}