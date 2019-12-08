n = 0:1:199;
x = input('Please input x(n): ');

%piecewise function
y1 = -1.5.*x.*(n) + 2*x.*(n+1) - ((x.*(n+2))./2).*(n==0);
y2 = x.*(n+1)./2 - 0.5*x.*(n-1).*((0<n)&(n<=198));
y3 = 1.5*x.*n - 2*x.*(n-1) - 0.5*x.*(n-2).*(n==199);

%plotting the function of the graph
y = y1 + y2 + y3;
plot(n,y, '-.g', 'linewidth',1);hold; grid;
plot(n,x, ':r', 'linewidth', 1); hold on;
xlabel('x-axis');
ylabel('y-axis');
legend('piecewise function','x(n)');

