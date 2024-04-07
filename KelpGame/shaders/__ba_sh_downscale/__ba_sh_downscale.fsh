
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 downscale_size;

void main() {
	vec2 texel = 1.0 / downscale_size;
	vec2 uv = vec2(texel.x*floor(v_vTexcoord.x/texel.x), texel.y*floor(v_vTexcoord.y/texel.y));
	gl_FragColor = v_vColour * texture2D(gm_BaseTexture, uv);
}
