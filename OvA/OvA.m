It = 10;

errors = zeros(1, It);

for it = 1:It
    %Split between Training and Test Set
    [X,Y] = Split_ClassLabels(S);
    [Xtr, Ytr, Xts, Yts] = randomSplitDataset(X, Y, 4000, 2000);
    
    errors(1,it) = OneVsAll(Xtr,Ytr,Xts,Yts);
end

mn = mean(errors);
sd = std(errors,0,2);


