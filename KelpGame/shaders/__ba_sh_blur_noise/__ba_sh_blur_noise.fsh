
/*------------------------------------------------------------------------
You cannot redistribute this pixel shader source code anywhere.
Made by Foxy Of Jungle. Thanks.
------------------------------------------------------------------------*/

//#define OS_Android // for better quality on Windows (and others), comment this

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float radius;

const float softness = 8.0;
const int passes = 8;

#ifdef OS_Android
float random(inout float rnd) {return rnd = (fract(sin(rnd)*11.0)-0.5)*2.0;}
#else
float random(inout float rnd) {return rnd = (fract(sin(rnd)*9999.0)-0.5)*2.0;}
#endif

float noise(vec2 p, inout float rnd) {
	return rnd = fract(sin(dot(p, vec2(12.9898, 78.233))));
}

void main() {
	vec2 uv = v_vTexcoord;
	
	float dist = (radius*0.01) * softness;
	float rand = 0.0;
	vec4 col_blur = vec4(0.0);
	vec2 uv2 = uv;
	noise(uv, rand);
	
	for(int i = 0; i < passes; i++) {
		uv2.x = random(rand);
		uv2.y = random(rand);
		vec2 uv3 = uv + uv2 * dist;
		col_blur += texture2D(gm_BaseTexture, uv3) / float(passes);
	}
	gl_FragColor = col_blur;
}
