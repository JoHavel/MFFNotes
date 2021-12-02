unitsize(1cm);
import graph;

currentpen = currentpen + 3pt;

real xs = 200;
real ys = 300;

real ln(real x) {
  real num = 0;
  while (x > 10) {
    num += 1;
    x /= 10^(1/50);
  }
  return(num/50);
}

real f(real x) {
	return ln((xs*x)^2 - 2);
}

real x = 3;
real lastx = 3;
while(x < xs*21) {
  fill(circle((x/xs, f(x/xs)), 0.2));
  draw((lastx/xs, f(lastx/xs)) -- (x/xs, f(x/xs)), gray, Arrow(20));
  lastx = x;
  x = x^2 - 2;
}

path g = graph(f,0,11.5, n=80);
draw(g);


draw((0, 0)--(12, 0), Arrow(20));
draw((0, 0)--(0, 7), Arrow(20));

for(int i = 1; i < 12; ++i) {
  if(i == 0) continue;
  draw((i, 0.05)--(i, -0.05));
  label(string(xs*i), (i, 0), 3*S);
}
for(int i = 0; i < 7; ++i) {
  draw((0.05, i)--(-0.05, i));
  label(string(10^i), (0, i), 3*W);
}