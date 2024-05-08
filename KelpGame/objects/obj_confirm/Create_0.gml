/// @description Insert description here
// You can write your code in this editor

step = 50;
up = true;
opacity = 0;

title = scribble(title_text);
title.scale(obj_window_scaler.w_ratio / 2);
title.starting_format("ft_button1", WHITE);



content = scribble(text);
content.scale(obj_window_scaler.w_ratio);
content.wrap(obj_window_scaler.w_ratio * 760);
content.starting_format("ft_body", BLACK);
content.line_spacing("90%");



cancel_btn = scribble(btn1_icon + btn1_text);
cancel_btn.scale(obj_window_scaler.w_ratio);
cancel_btn.starting_format("ft_slider_label", WHITE);
_cancel_btn_width = 0;
cancel_hover = false;
cancel_hover_prev = false;
cancel_color =  YELLOW;
draw_set_font(ft_slider_label);
_cancel_btn_width = string_width(btn1_text) + 26;


go_btn = scribble(btn2_icon + btn2_text);
go_btn.scale(obj_window_scaler.w_ratio);
go_btn.starting_format("ft_slider_label", WHITE);
_go_btn_width = 0;
go_hover = false;
go_hover_prev = false;
go_color =  ACCENT;
draw_set_font(ft_slider_label);
_go_btn_width = 26 +  string_width(btn2_text);


opacity = 0.5;
x = 550;