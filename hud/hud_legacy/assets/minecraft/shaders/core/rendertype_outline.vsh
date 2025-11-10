#version 150

in vec3 Position;
in vec4 Color;
in vec2 UV0;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
out vec4 vertexColor;
out vec2 texCoord0;
uniform vec2 ScreenSize; //hud
#moj_import <hud.glsl> //Hud
void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    vertexColor = Color;
    texCoord0 = UV0;
    //Hud
    if (make_hud()) {
        return;
    }
    //Hud
}
