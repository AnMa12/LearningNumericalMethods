f = @(x) x.^3 - 7 * x.^2 + 14*x -6;
X = linspace(0, 4, 100); Y = f(X); plot(X, Y)
eps = 10^(-3);
syms x
f = @(x) x^3 - 7 * x^2 + 14*x -6;
df = diff(f, x, 1);
[xaprox1]=MetNR(f, df, 0.5, eps)
[xaprox2]=MetNR(f, df, 2.75, eps)
[xaprox3]=MetNR(f, df, 3.75, eps)


