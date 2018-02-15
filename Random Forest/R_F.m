%{    
%Split Xtr Ytr 
    [X,Y] = Split_ClassLabels(S);
    [Xtr, Ytr, Xts, Yts] = randomSplitDataset(X, Y, 1000, 1000);
    S = [Xtr Ytr];
    
    
    num_tr = 1:20;
    errors_votes = zeros(20,1);
    %errors_avg = zeros(100,1);
    trees = 1;
    while trees <= 20
        disp(trees);
        Forest = build_RandomF(S,trees);
        Ypred_votes = Vote(Forest,Xts);
        %Ypred_avg = Average(Forest,Xts);
        errors_votes(trees) = myErr(Ypred_votes,Yts);
        %errors_avg(trees) = myErr(Ypred_avg,Yts);
        trees = trees + 1;
    end

%}

nTrees = 10;
It = 5;


errors_votes = zeros(nTrees,It);
%errors_votes(i,:) contains the errors for RandomForest with i
%trees on different splits
trees = 1;
while trees <= nTrees
    disp(trees);
    errors_votes(trees,:) = RF (trees, It, S);
    trees = trees + 1;
end

Print(errors_votes,nTrees);
    
   

    