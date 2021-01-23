a=0; b=4; x0=1; n=40;
[t,x]=euler(@f,a,b,x0,n);
s=0:0.01:4;
y=exp(s);
plot(s,y,'k-', t,x,'ro');
legend('exact solution','computed solution');
xlabel('t');
ylabel('x');
title(sprintf('Euler method curves (n = %3.0f)',n))