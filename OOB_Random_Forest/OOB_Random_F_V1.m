It = 1;
nTrees = 10;

oobs = zeros(nTrees,It);
for trees = 1:nTrees
    for it = 1:It
        fprintf('nTrees: %d, Iteration: %d\n',trees,it);
        oobs(trees,it) = compute_OOB(S,trees);
    end
    
end

Print(oobs,nTrees);
