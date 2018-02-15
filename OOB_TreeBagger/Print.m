function Print(oobs)
 
    nTrees = size(oobs,1);
    arr = 1:nTrees;
    mn = mean(oobs,2);
    
    figure(1);
    bar(arr,mn,'g','DisplayName','ans');
    xlabel('Number Of Trees');
    ylabel('Mean OOB');
    
end