shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture, filter_nearest;

void fragment() {
	vec4 textureBehind = textureLod(screen_texture, SCREEN_UV, 0.0);
	if (COLOR.a >= 0.1) {
		COLOR = textureBehind;
	}
	else {
		// COLOR = texture_behind;
		COLOR.a = 0.0;
	}
}
