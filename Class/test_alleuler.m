a=0; b=4; x0=1; n=20;
f = @(t,x) x;
s=0:0.01:4;
y=exp(s);
t=linspace(a,b,n+1);
h=(b-a)/n;
[t,x_e]=euler(f,a,b,x0,n);
[t,x_m]=mid_euler(f,a,b,x0,n);
[t,x_t]=trape_euler(f,a,b,x0,n);
plot(s,y,'k-', t,x_m,'b*', t,x_t,'r--', t,x_e,'go','lineWidth',2);
legend('exact solution', 'computed solution by MEM',...
      'computed solution by TEM', 'computed solution by EM');
xlabel('t');
ylabel('x');
title(sprintf('Various methods for dx/dt=x, x(0)=0, n = %3.0f',n));
set(gca,'FontSize',20)
disp('       t       true      MEM       TEM        EM')
disp([t', (exp(t))', x_m',x_t',x_e'])
