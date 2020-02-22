#version 330 core
// from https://learnopengl.com/Lighting/Basic-Lighting

in vec3 aPos;
// ignored in this shader
in vec3 aNormal;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

void main()
{
	gl_Position = projection * view * model * vec4(aPos, 1.0f);
}