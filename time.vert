uniform float now;
attribute vec3 position;
attribute float time;
varying vec3 vOpacity;

void main() {
    vOpacity = 1.0-(now-time);
    vOpacity = (vOpacity >= 0.0 && vOpacity <= 1.0) ? vOpacity : 0.0;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0 );
}
