uniform vec3 color;
uniform float opacity;
varying float vOpacity;
void main() {
    gl_FragColor = vec4(color, vOpacity*opacity);
}