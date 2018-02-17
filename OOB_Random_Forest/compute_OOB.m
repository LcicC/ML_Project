%Get the OOB errors for a given number of trees
function oob = compute_OOB(S,nTrees)

    Forest = build_RandomF(S,nTrees);
    
    [X,Y] = Split_ClassLabels(S);
   
    %Ypred = [];
    %Yts = [];
    Ypred = zeros(size(Y,1),1);
    Yts = zeros(size(Y,1),1);
    for t = 1:size(X,1)
        
        x = X(t,:);
        y = Y(t,1);
        
        to_put = 0;
        votes = [];
       
        %Check if x belongs to a Tree in the Forest
        for tr = 1:size(Forest,2)
            
            a = ismember(x,Forest{tr}.X,'rows');
            
            if a==0
               to_put = 1;
               %votes(1,tr) = predict(Forest{tr},x);
               votes = [votes predict(Forest{tr},x)];
            end 
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        if to_put == 1
            %Yts = [Yts; y];
            %Ypred = [Ypred; get_Winner(votes)];
            Yts(t,1) = y;
            Ypred(t,1) = get_Winner(votes);
        end
    end
    
    oob = myErr(nonzeros(Ypred),nonzeros(Yts));
end
    
    
    
        
    
    
    