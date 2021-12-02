unitsize(2cm);
import graph;

currentpen = currentpen + 1.5pt;

real f(real x) {
	return sqrt(x + 2);
}

real x = -1.5;
real lastx = -1.5;
while(abs(x-2) > 0.01) {
  fill(circle((x, f(x)), 0.05));
  draw((lastx, f(lastx)) -- (x, f(x)), gray, Arrow(8));
  lastx = x;
  x = f(x);
}

path g = graph(f,-1.8,2.3);
draw(g);


draw((-2, 0)--(2.5, 0), Arrow(10));
draw((0, 0)--(0, 3), Arrow(10));

for(int i = -3; i < 5; ++i) {
  if(i == 0) continue;
  draw((i/2, 0.05)--(i/2, -0.05));
  label(string(i/2), (i/2, 0), 3*S);
}
for(int i = 0; i < 3; ++i) {
  draw((0.05, i)--(-0.05, i));
  label(string(i), (0, i), 3*NE);
}