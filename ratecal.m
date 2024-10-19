function rmean=ratecal(t,C,a,cycle)
r=[];ave=[];vari=[];
for i = 1:t
    [ave(i),vari(i)]=variance(C,a,cycle);
    syms x
    %r(i)=vpasolve(vari(i)/ave(i)==x/log(x),x,10^-6)/(2^cycle*C);
    r(i)=vpasolve(x*2^cycle*log(2^cycle*C*x)-ave(i)==0,x,10^-7);
end
rmean=mean(r);
end