%Execute algorithm on different splits given a number of trees
function errors = RF(nTrees, nIt, S)
    [X,Y] = Split_ClassLabels(S);
    errors = zeros(1,nIt);
    for it = 1:nIt
        fprintf('nTrees: %d, Iteration: %d\n',nTrees,it);
        [Xtr, Ytr, Xts, Yts] = randomSplitDataset(X, Y, 1500, 500);
        Set = [Xtr Ytr];
        Forest = build_RandomF(Set,nTrees);
        Ypred_votes = Vote(Forest,Xts);
        errors(1,it) = myErr(Ypred_votes,Yts);
    end
    
end