%It = number of iterations
It = 10;
nTrees = 50;

[X,Y] = Split_ClassLabels(S);
features = X;
classLabels = Y;

%oobs(i,:) contains oob errors of RF with i trees 
oobs = zeros(nTrees, It);

for it = 1:It
    fprintf('Iteration: %d\n',it);
    B = TreeBagger(nTrees,features,classLabels, 'Method', 'classification','OOBPrediction','on');
    oobs(:,it) = oobError(B);
end

Print(oobs);

%{
for nTrees = 1:10
    % Train the TreeBagger (Decision Forest).
    B = TreeBagger(nTrees,features,classLabels, 'Method', 'classification','OOBPrediction','on');
    oobs(nTrees) = mean(oobError(B));
    disp(nTrees);
end
%}
