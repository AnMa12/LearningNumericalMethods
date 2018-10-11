% 4)Reprezentati grafic in aceeasi pagina, functiile
% f1, f2: [-pi, pi] -> R 
% f1(x) = (1 - cosx)/ x^2 
% f2(x) = sin^2x/x^2*(1+cosx)
% x apartine {10 ^ -8, 10 ^ -7, ..., 10 ^ -1}
% x apartine {pi - 10 ^ -1, pi - 10 ^ -2, ... pi - 10 ^ -8}
x = 1 : 8 % x = (1 2 3 ... 8)
x = 10.^(-x) % (10 ^ -1, 10^-2, ...)
y = (1 - cos(x))./(x.^2);
plot(subplot(2, 1, 1),x, y)
xlabel('\fontname{Arial} coord x','FontSize',12)
ylabel('\fontname{Arial} coord y','FontSize',12)
title('\fontname{Times New Roman} Grafic 1','FontSize',14)
x = pi - x;
y = (sin(x).^2)./((x.^2).*(1+cos(x)))
plot(subplot(2, 1, 2), x, y)
xlabel('\fontname{Arial} coord x','FontSize',12)
ylabel('\fontname{Arial} coord y','FontSize',12)
title('\fontname{Times New Roman} Grafic 2','FontSize',14)