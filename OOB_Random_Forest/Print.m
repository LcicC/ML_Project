function Print(oobs, nTrees)
    arr = 1:nTrees;
    mn = mean(oobs,2);
    figure(1);
    
    bar(arr,mn,'r','DisplayName','ans');
    xlabel('Number Of Trees');
    ylabel('Mean Error');
end