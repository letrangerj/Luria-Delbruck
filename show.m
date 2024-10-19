function show = show(C,a,cycle)
resistent=[];
for i = 1:C
    resistent(i) = num (a,cycle);
end
show = bar(resistent,'cyan');