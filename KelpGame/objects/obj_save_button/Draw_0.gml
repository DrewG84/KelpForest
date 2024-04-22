/// @description Insert description here
// You can write your code in this editor
var _width = 220;
var _height = 100;

x = 1920 - 82 - 220;
y = 1080 - 82 - 100 - 10;

draw_set_color(WHITE)
draw_roundrect_ext(x - 10, y - 10, x + _width + 10, y + _height + 10, 120, 120, false);
draw_set_color(color)
draw_roundrect_ext(x, y, x + _width, y + _height, 100, 100, false);
label.draw(x + _width / 2, y + _height / 2);