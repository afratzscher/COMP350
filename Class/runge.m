function a = runge()

x = linspace(-1,1,100);
y = 1./(1+25*x.^2);

for n = 8:2:20
    plot(x,y,'r-');
    title('Runge fx');
    hold on
    disp('Press any key to continue');
    pause
    x_equal = linspace(-1,1,n+1);
    y_equal = 1./(1+25*x_equal.^2);
    plot(x_equal, y_equal, 'b*');
    title(sprintf('Equal spacing (n = %2.0f)', n));
    disp('Press any key to continue');
    pause
    a = newton_coef(x_equal,y_equal); 
    pval = newton_runge_eval(a,x_equal, x);
    plot(x, pval, 'b--');
    title(sprintf('Poly interpolation (n = %2.0f)', n));
    disp('Press any key to continue');
    pause
    hold off
end