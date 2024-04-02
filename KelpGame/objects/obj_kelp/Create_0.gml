/// @description Insert description here
// You can write your code in this editor
width = room_width;
height = room_height + 20;

switch layer_get_name(layer) {
	case "foreground":
		kelp_sep = 500;
		sway_time = 0;
		sway_amount = 5;
		_depth = 0;
	break;
	case "fish1":
		kelp_sep = 400;
		sway_time = 200;
		sway_amount = 4;
		_depth = 0.25;
	break;
	case "fish2":
		kelp_sep = 150;
		sway_time = 400;
		sway_amount = 3;
		_depth = 0.5;
	break;
	case "fish3":
		kelp_sep = 100;
		sway_time = 600;
		sway_amount = 2;
		_depth = 0.75;
	break;
}

kelp_width = 100;



u_amount = shader_get_uniform(shd_kelp, "u_amount");

texture = sprite_get_texture(spr_kelp_temp, 0);

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
vertex_format_add_texcoord();
vertex_format_add_custom(vertex_type_float1, vertex_usage_texcoord);
format = vertex_format_end();

vbuff = vertex_create_buffer();
vertex_begin(vbuff, format);

for (var i = irandom_range(0 - kelp_sep / 2, 0); i < width; i += irandom_range(kelp_sep / 2, kelp_sep)) {
	var height_var = irandom_range(0, 30);
	kelp_script(vbuff, x + i, y + height + height_var, kelp_width, height + 10 + height_var, 40, _depth);
}
vertex_end(vbuff);