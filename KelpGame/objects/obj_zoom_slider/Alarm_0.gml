/// @description draw?
// You can write your code in this editor
var _scale = obj_pan_zoom.scale;

var _test_val = 0.5 * (1 + sin(get_timer() * 0.0000008))

var _y_val = y + ((slider_height) * (val));

var button_x = x;
var button_y = y + ((slider_height) * (val));

draw_set_color(c_purple);
draw_rectangle(button_x - (78 * _scale), button_y - (45 * _scale), button_x + (32 * _scale), button_y + (45 * _scale), false)
draw_text(mouse_x + 50, mouse_y, string(val))