unitsize(3cm);
import graph;

currentpen = currentpen + 2pt;

real f(real x) {
	return 8*x/5 - 3x^3/5;
}
path g = graph(f,0,1);
draw(g);

real f(real x) {
	return x^3 - 24*x^2/5 + 32*x/5 - 8/5;
}
path g = graph(f,1,2);
draw(g);

real f(real x) {
	return -2*x^3/5 + 18*x^2/5 - 52*x/5 + 48/5;
}
path g = graph(f,2,3);
draw(g);

fill(circle((1.5, 0.575), 0.05));

draw((0, 0)--(3.5, 0), Arrow(10));
draw((0, 0)--(0, 1.5), Arrow(10));

for(int i = 1; i < 4; ++i) {
  if(i == 0) continue;
  draw((i, 0.05)--(i, -0.05));
  label(string(i), (i, 0), 3*S);
}
for(int i = 0; i < 2; ++i) {
  draw((0.05, i)--(-0.05, i));
  label(string(i), (0, i), 3*W);
}