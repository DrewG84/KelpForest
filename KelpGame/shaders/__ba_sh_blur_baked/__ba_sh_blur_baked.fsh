
/*------------------------------------------------------------------------
You cannot redistribute this pixel shader source code anywhere.
Made by Foxy Of Jungle. Thanks.
------------------------------------------------------------------------*/

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 size_radius;
uniform vec2 direction;

void main() {
	// this shader apparently don't works on iOS
	vec2 uv = v_vTexcoord;
	
	vec2 texel_size = vec2(1.0/size_radius.x, 1.0/size_radius.y);
	vec2 dist = texel_size * direction * size_radius.z * 5.0;
    vec4 blurred_col = vec4(0.0);
	
	blurred_col += texture2D(gm_BaseTexture, uv - 11.413 * dist) * 0.019;
	blurred_col += texture2D(gm_BaseTexture, uv - 9.428 * dist) * 0.036;
	blurred_col += texture2D(gm_BaseTexture, uv - 7.443 * dist) * 0.061;
	blurred_col += texture2D(gm_BaseTexture, uv - 5.458 * dist) * 0.090;
	blurred_col += texture2D(gm_BaseTexture, uv - 3.473 * dist) * 0.118;
	blurred_col += texture2D(gm_BaseTexture, uv - 1.488 * dist) * 0.137;
	
	blurred_col += texture2D(gm_BaseTexture, uv) * 0.071;
	
	blurred_col += texture2D(gm_BaseTexture, uv + 1.488 * dist) * 0.137;
	blurred_col += texture2D(gm_BaseTexture, uv + 3.473 * dist) * 0.118;
	blurred_col += texture2D(gm_BaseTexture, uv + 5.458 * dist) * 0.090;
	blurred_col += texture2D(gm_BaseTexture, uv + 7.443 * dist) * 0.061;
	blurred_col += texture2D(gm_BaseTexture, uv + 9.428 * dist) * 0.036;
	blurred_col += texture2D(gm_BaseTexture, uv + 11.413 * dist) * 0.019;
	
	gl_FragColor = blurred_col;
}
