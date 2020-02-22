#version 330 core
// from https://learnopengl.com/Lighting/Basic-Lighting

out vec4 FragColor;

// ignored in this shader
uniform vec3 lightPos;
// ignored in this shader
uniform vec3 viewPos;

uniform vec3 lightColour;

// ignored in this shader
uniform vec3 objectColour;

void main()
{
	FragColor = vec4(lightColour, 1.0f);
};