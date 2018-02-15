%Returns a vector of OOB errors
function oobs = get_OOBs(Tr_Set,num_trees)
    
    oobs = zeros(num_trees,1);
    %Create num_trees trees
    for i = 1:num_trees
        r = 6000;
        
        %C is used to estimate OOB
        Tr_Sample = datasample(Tr_Set,r);
        C = setdiff(Tr_Set, Tr_Sample,'rows');
        [X,Y] = Split_ClassLabels(Tr_Sample);
        [Xoob, Yoob] = Split_ClassLabels(C);
        tree = fitctree(X,Y);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        %Predict class of Xoob using tree
        Ypred = zeros(size(Yoob,1),1);
        for t = 1:size(Xoob,1)
            Ypred(t) = predict(tree,Xoob(t,:));
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        %Compute OOB for tree
        oobs(i) = oob_Err(Yoob,Ypred);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
    
    end
end