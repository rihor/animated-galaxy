varying vec3 vColor;

void main() {
  float strength = distance(gl_PointCoord, vec2(0.5));
  strength = 1. - strength;
  strength = pow(strength, 10.);

  vec3 color = mix(vec3(0.), vColor, strength);

  gl_FragColor = vec4(color, 1.); 
  // gl_FragColor = vec4(vColor, strength);
}