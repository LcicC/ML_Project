
%nTrees = number of trees to use
nTrees = 20;

%It = number of random splits
It = 5;


errors = zeros(nTrees,It);

for trees = 1:nTrees
    disp(trees);
    errors(trees,:) = RF (trees, It, S);
end

Print(errors,nTrees);