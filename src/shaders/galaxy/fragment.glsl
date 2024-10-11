varying vec3 vColor;

void main()
{
    // Disc
    // float strength = distance(gl_PointCoord, vec2(0.5));
    // strength = 1.0 -step(0.5, strength);

    // Diffuse point
    // float strength = distance(gl_PointCoord, vec2(0.5));
    // strength = 1.0 - (2.0 * strength);

    // Light point
    float strength = distance(gl_PointCoord, vec2(0.5));
    strength = 1.0 - strength;
    strength = pow(strength, 10.0);

    vec3 finalColor = mix(vec3(0.0), vColor, strength);

    gl_FragColor = vec4(finalColor, 1.0);
    #include <colorspace_fragment>

}