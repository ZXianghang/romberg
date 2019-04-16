function T = romberg(f,a,b,N)
h1 = (b-a)/N;x1 = a:h1:b; f1 = f(x1);
T1 = h1/2*(f1(1)+f1(N+1))+h1*sum(f1(2:N));
x2 = a-h1/2:h1:b-h1/2; f2 = f(x2);
T2 = T1/2+h1/2*sum(f2);
x3 = a-h1/4:h1/2:b-h1/4; f3 = f(x3);
T3 = T2/2+h1/4*sum(f3);
s1 = T2+(T2-T1)/3;
s2 = T3+(T3-T2)/3;
T = s2+(s2-s1)/15;
end