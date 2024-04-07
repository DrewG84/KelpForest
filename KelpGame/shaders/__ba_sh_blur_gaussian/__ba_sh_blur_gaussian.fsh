
/*------------------------------------------------------------------------
You cannot redistribute this pixel shader source code anywhere.
Made by Foxy Of Jungle. Thanks.
------------------------------------------------------------------------*/

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 size_radius; // width, height, radius

const float iterations = 8.0;
const float directions = 16.0;
const float Tau = 6.28318530718;

void main() {
	vec2 radius = size_radius.z / (size_radius.xy*0.01);
	vec4 col = vec4(0.0);
	for (float dir = 0.0; dir < Tau; dir += Tau/directions) {
		for (float i = 1.0/iterations; i <= 1.0; i += 1.0/iterations) {
			col += texture2D(gm_BaseTexture, v_vTexcoord + vec2(cos(dir), sin(dir)) * radius * i, 0.5);		
		}
	}
	col /= iterations * directions;
	gl_FragColor = col;
}
