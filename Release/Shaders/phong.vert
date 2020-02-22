#version 330 core
// from https://learnopengl.com/Lighting/Basic-Lighting

// position of the vertex in the model data
in vec3 aPos;
// the vector perpendicular to the plane, in the direction that is the "front" of the plane
in vec3 aNormal;

// absolute world position of vertex (called FragPos because that's all it's used for as output)
out vec3 FragPos;
// the vector perpendicular to the plane, in the direction that is the "front" of the plane
out vec3 Normal;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

void main()
{
	FragPos = vec3(model * vec4(aPos, 1.0f));
	Normal = mat3(transpose(inverse(model))) * aNormal;
	gl_Position = projection * view * vec4(FragPos, 1.0f); //Frag Pos incorporates the model matrix and vertex position for the MVP
}