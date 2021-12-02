unitsize(2cm);
import graph;

currentpen = currentpen + 1.5pt;

real f(real x) {
	return (x^2 + 2)/(2x - 1);
}

real x = 0;
real lastx = 0;
while(abs(x+1) > 0.01) {
  fill(circle((x, f(x)), 0.05));
  draw((lastx, f(lastx)) -- (x, f(x)), gray, Arrow(6));
  lastx = x;
  x = f(x);
}

path g = graph(f,-2.8,0.2);
draw(g);


draw((0, 0)--(-3, 0), Arrow(10));
draw((0, 0)--(0, -4), Arrow(10));

for(int i = -2; i < 0; ++i) {
  if(i == 0) continue;
  draw((i, 0.05)--(i, -0.05));
  label(string(i), (i, 0), 2*S);
}
for(int i = -4; i < 0; ++i) {
  draw((0.05, i)--(-0.05, i));
  label(string(i), (0, i), 2*SW);
}