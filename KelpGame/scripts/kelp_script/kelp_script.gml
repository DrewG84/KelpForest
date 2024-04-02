// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kelp_script(vbuff, xx, yy, width, height, segments){
	//var vbuff = argument0;
	//var xx = argument1;
	//var yy = argument2;
	//var width = argument3;
	//var height = argument4;
	//var segments = argument5;
	
	var seg_height = height / segments;
	
	
	
	
	for (var i = 0; i < segments; i++) {
		var x1 = xx - width / 2;
		var y1 = yy - i * seg_height;
		var x2 = x1 + width;
		var y2 = y1;
		var x3 = x1;
		var y3 = y1 - seg_height;
		var x4 = x3 + width;
		var y4 = y3;
		
		var color = merge_color(c_white, c_green, i / segments)
		// #F0980E
		
		var _base_weight =  lerp(0, 1, i / segments);
		var _top_weight = lerp(0, 1, (i + 1) / segments);
		
		var uvs = sprite_get_uvs(spr_kelp_temp, 0);
		var left = uvs[0];
		var top = uvs[1];
		var right = uvs[2];
		var bottom = uvs[3];
		
		//vertices
		
		//tri 1
		vertex_position(vbuff, x1, y1);
		vertex_color(vbuff, color, 1);
		vertex_texcoord(vbuff, left, top);
		vertex_float1(vbuff, _base_weight);
		
		vertex_position(vbuff, x2, y2);
		vertex_color(vbuff, color, 1);
		vertex_texcoord(vbuff, right, top);
		vertex_float1(vbuff, _base_weight);
		
		vertex_position(vbuff, x3, y3);
		vertex_color(vbuff, color, 1);
		vertex_texcoord(vbuff, left, bottom);
		vertex_float1(vbuff, _top_weight);
		
		//tri 2
		vertex_position(vbuff, x2, y2);
		vertex_color(vbuff, color, 1);
		vertex_texcoord(vbuff, right, top);
		vertex_float1(vbuff, _base_weight);
		
		vertex_position(vbuff, x4, y4);
		vertex_color(vbuff, color, 1);
		vertex_texcoord(vbuff, right, bottom);
		vertex_float1(vbuff, _top_weight);
		
		vertex_position(vbuff, x3, y3);
		vertex_color(vbuff, color, 1);
		vertex_texcoord(vbuff, left, bottom);
		vertex_float1(vbuff, _top_weight);
	}
	
	
}