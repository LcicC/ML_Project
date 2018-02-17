

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
    
   

    