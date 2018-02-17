%Returns a Forest based on all features with num_trees = number of trees
function Forest = build_RandomF(Tr_Set,num_trees)
    Forest = cell(1,num_trees);
    %Create num_trees trees
    for i = 1:num_trees
        r =  4000;
        %r = randi([1 sz]);
        %C = setdiff(Tr_Set, Tr_Sample)
        Tr_Sample = datasample(Tr_Set,r);
        [X,Y] = Split_ClassLabels(Tr_Sample);
        tree = fitctree(X,Y);
        Forest{i} = tree;
    end
end