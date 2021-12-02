unitsize(2cm);
import graph;

currentpen = currentpen + 1.5pt;

real f(real x) {
	return 1 + 2/x;
}

real x = 3;
real lastx = 3;
while(abs(x-2) > 0.03) {
  fill(circle((x, f(x)), 0.05));
  draw((lastx, f(lastx)) -- (x, f(x)), gray, Arrow(6));
  lastx = x;
  x = f(x);
}

path g = graph(f,0.8,3.8);
draw(g);


draw((0, 0)--(4, 0), Arrow(10));
draw((0, 0)--(0, 4), Arrow(10));

for(int i = 0; i < 4; ++i) {
  if(i == 0) continue;
  draw((i, 0.05)--(i, -0.05));
  label(string(i), (i, 0), 3*S);
}
for(int i = 0; i < 4; ++i) {
  draw((0.05, i)--(-0.05, i));
  label(string(i), (0, i), 3*NE);
}