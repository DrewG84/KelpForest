/// @description Insert description here
// You can write your code in this editor
current_sprite = -1;

hover = false;

temp_surf = -1;

button_y = 938;

hover_step = 0;

text_content = "[wave]SNAP![/]"

text = scribble(text_content);

text.scale(obj_window_scaler.w_ratio);
text.align(fa_center, fa_middle);
text.starting_format("ft_button1", BLACK);
text.transform(1, 1, 270);
