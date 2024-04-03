/// @description Insert description here
// You can write your code in this editor
width = room_width;
height = room_height + 20;

switch layer_get_name(layer) {
	case "beam1":
		sep = 2000;
		alpha = 0.2;
		sway_time = 0;
		sway_amount = 4;
		beam_width = 150;
	break;
	case "beam2":
		sep = 1500;
		alpha = 0.3;
		sway_time = 800;
		sway_amount = 4;
		beam_width = 100;
	break;
	case "beam3":
		sep = 2000;
		alpha = 0.3;
		sway_time = 1500;
		sway_amount = 3;
		beam_width = 80;
	break;
}

u_amount = shader_get_uniform(shd_kelp, "u_amount");

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
format = vertex_format_end();

vbuff = vertex_create_buffer();
vertex_begin(vbuff, format);

for (var i = irandom_range(0 - sep / 2, 0); i < width + 800; i += irandom_range(sep / 2, sep)) {
	
		
		show_debug_message("light")
		var x1 = i - (beam_width / 2);
		var y1 = -20;
		var x2 = x1 + beam_width;
		var y2 = y1;
		var x3 = x1 - 300;
		var y3 = y1 + 1200;
		var x4 = x3 + beam_width;
		var y4 = y3;
		
		var color = WHITE;
		
		//tri 1
		vertex_position(vbuff, x1, y1);
		vertex_color(vbuff, color, alpha);

		
		vertex_position(vbuff, x2, y2);
		vertex_color(vbuff, color, alpha);

		
		vertex_position(vbuff, x3, y3);
		vertex_color(vbuff, color, 0);

		
		//tri 2
		vertex_position(vbuff, x2, y2);
		vertex_color(vbuff, color, alpha);
		
		
		vertex_position(vbuff, x4, y4);
		vertex_color(vbuff, color, 0);
		
		
		vertex_position(vbuff, x3, y3);
		vertex_color(vbuff, color, 0);
		
		
		
	
}
vertex_end(vbuff);