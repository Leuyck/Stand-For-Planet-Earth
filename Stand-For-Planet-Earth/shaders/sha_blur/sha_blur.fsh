const int Quality = 16;
const float Distance = 0.1;
const int Directions = 8;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
const float Pi = 3.14159265359;
const float Tau = Pi*2.0;

void main()
{

vec4 Color;

for(float dir = 0.0;dir<1.0;dir+=1.0/float(Directions)) {
float xvar = (Distance*2.0+Distance)*sin(dir*Tau);
float yvar = (Distance*2.0+Distance)*cos(dir*Tau);

for(float i = 0.0;i < 1.0;i+=1.0/float(Quality)) {
float dis = i*Distance;
Color += texture2D(gm_BaseTexture,vec2(v_vTexcoord.x+xvar*dis,v_vTexcoord.y+yvar*dis));
}

}
Color /= float(Quality)*float(Directions); //I don't get the +1.0 part in the original, removing it seems to have no effect.

gl_FragColor = Color; //Same as above but with the *v_vColour part.
} 