function mean_e = OneVsAll(Xtr, Ytr, Xts, Yts)
    %OvA with classes 3-9
    %W will have the first two columns with 0
    for k = 3:9
        fprintf('Class: %d\n',k);
        class = k;
        z = Ytr; 
        sz = size(z);
        for t = 1:sz
            if Ytr(t)==class  %Put z(t)=1 if Ytr(t)=class
                z(t)= 1;
            else
                z(t) = 0;
            end
        end
        intRegPar = logspace(0,-5,12);
        [l, s, Vm, Vs, Tm, Ts] = holdoutCV('rls', Xtr, Ytr,[], 0.7, 100, intRegPar, []);
        W(:,k) = regularizedLSTrain(Xtr, z, l);
    end
    
    mean_e = myErr(yPredict(W,Xts), Yts);
end