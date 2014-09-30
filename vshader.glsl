#ifdef GL_ES
// Set default precision to medium
precision mediump int;
precision mediump float;
#endif

uniform mat4 mvp_matrix;
uniform float time;
uniform vec2 resolution;

attribute vec4 a_position;
attribute vec2 a_texcoord;

varying vec2 iResolution;
varying vec2 v_texcoord;
varying float iGlobalTime;
//! [0]
void main()
{
    // Calculate vertex position in screen space
    gl_Position = mvp_matrix * a_position;
    iGlobalTime = time;
    iResolution = resolution;
    // Pass texture coordinate to fragment shader
    // Value will be automatically interpolated to fragments inside polygon faces
    v_texcoord = a_texcoord;
}
//! [0]
