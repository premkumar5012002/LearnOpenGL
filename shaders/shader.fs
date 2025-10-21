#version 330 core

in vec3 Color;
in vec2 TexCoord;

uniform sampler2D Texture;

out vec4 FragColor;

void main() {
    FragColor = texture(Texture, TexCoord);
}
