//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)
attribute float in_Weight;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_amount;

void main()
{
	vec4 trans_pos = vec4(in_Position.xyz, 1.0);
	
	float offset = 40.0 * (sin(100.0 + u_amount * 0.3));

	trans_pos.x += offset;

	//trans_pos.x += smoothstep(0., 1., in_Weight*0.5) * 20. * u_amount;
	
    //vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    //gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
	gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * trans_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
