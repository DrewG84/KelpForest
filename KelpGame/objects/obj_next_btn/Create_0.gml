/// @description Insert description here
// You can write your code in this editor
hover = false;
hover_anim = 0;

in = true;

radius = 0;
radius_anim = 0;

color = ACCENT;

confirm_struct = {
	title_text: "Finished Editing?",
	text: "You will not be able to continue editing your photo after this",
	btn1_text: " Keep Working",
	btn1_icon: "[spr_close]",
	btn2_text: " Done!",
	btn2_icon: "[spr_continue,1]",
	room_val: rm_camera,
	instance: obj_capture_filter,
}