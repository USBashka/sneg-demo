shader_type spatial;

uniform sampler2D promenad;
uniform float depth;

void vertex() {
	VERTEX.y += texture(promenad, UV).r * depth;
}

void fragment() {
	ALBEDO = texture(promenad, UV).rgb;
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
