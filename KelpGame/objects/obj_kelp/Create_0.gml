/// @description Insert description here
// You can write your code in this editor
width = room_width;
height = room_height + 20;

switch layer_get_name(layer) {
	case "foreground":
		kelp_sep = 500;
		sway_time = 0;
		sway_amount = 5;
	break;
	case "fish1":
		kelp_sep = 400;
		sway_time = 200;
		sway_amount = 4;
	break;
	case "fish2":
		kelp_sep = 300;
		sway_time = 400;
		sway_amount = 3;
	break;
	case "fish3":
		kelp_sep = 200;
		sway_time = 600;
		sway_amount = 2;
	break;
}

kelp_width = 80;



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

for (var i = irandom(kelp_sep); i < width; i += irandom_range(kelp_sep / 2, kelp_sep)) {
	kelp_script(vbuff, x + i, y + height - 10, kelp_width, height, 40);
}
vertex_end(vbuff);