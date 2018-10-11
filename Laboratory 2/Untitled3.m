f=@(x) x.^3-7.*x.^2+14*x-6;
X = linspace(0,4,100) %face un interval [0,4] de il imparte in 100 de puncte
Y = f(X); 
plot(X, Y, 'linewidth', 2);
eps=10^(-5);
[xaprox1]=MetBisectie(f,0,1,eps);
[xaprox2]=MetBisectie(f,1,3.2,eps);
[xaprox3]=MetBisectie(f,3.2,4,eps);
hold on; % ca sa faca in aceeasi figura
xL = xlim;
yL = ylim;
line(xL, [0 0], 'color', 'k', 'linewidth', 2) %axa ox
line([0 0], yL, 'color', 'k', 'linewidth', 2) %axa oy
plot(xaprox1, f(xaprox1), 'o', 'MarkerFaceColor', 'g', 'MarkerSize', 10);
text(0.4,0.4,'x_{arpox1}', 'EdgeColor', 'y', 'lineWidth', 1.5)
plot(xaprox2, f(xaprox2),'o', 'MarkerFaceColor', 'g', 'MarkerSize', 10);
text(2.8,-0.4,'x_{arpox2}', 'EdgeColor', 'y', 'lineWidth', 1.5);
plot(xaprox3, f(xaprox3),'o', 'MarkerFaceColor', 'g', 'MarkerSize', 10);
text(3.45,-0.4,'x_{arpox3}', 'EdgeColor', 'y', 'lineWidth', 1.5);
xlabel('x'); ylabel('y'); title('Metoda Bisectiei');
hold off