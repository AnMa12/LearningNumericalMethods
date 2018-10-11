% 5) Reprezentati grafic functia f:[-5, 5] -> R,
% f(x) = x^2, x apartine (-2, 0)
%        x^3, x apartine [0, 3)
%        x^2 + 18, x apartine [3, 4)
%        0, altfel
% functia depinde de x scrie @(x)
fplot(@(x) 0 * x, [-5, -2])
hold on
fplot(@(x) x^2, [-2, 0])
fplot(@(x) x^3, [0, 3])
fplot(@(x) x^2 + 18, [3, 4])
fplot(@(x) 0 * x, [4, 5])