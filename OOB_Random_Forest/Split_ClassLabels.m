function [X,Y] = Split_ClassLabels(S) 
    X = S;
    Y = X(:,size(X,2));

    %Delete labels column and normalize decimal values
    X = X(:,1:(size(X,2))-1);
end
