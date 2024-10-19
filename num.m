function numofresistent = num(a,cycle)
N=1;
resistent=[];
for i = 1:cycle
    N=N*2;
    resistent(i)=0;
    for j = 1:N
        if randi(10^7) < a*10^7
            resistent(i)=resistent(i)+1;
        else
        end
    end
    N=N-resistent(i);
end
numofresistent=2^cycle-N;
end
