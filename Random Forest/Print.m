function Print(errors, nTrees)
    arr = 1:nTrees;
    mn = mean(errors,2);
    figure(1);
    bar(arr,mn,'DisplayName','ans');
    xlabel('Number Of Trees');
    ylabel('Mean Error');
    
    sd = std(errors,0,2);
    figure(2);
    bar(arr,sd,'r','DisplayName','ans');
    xlabel('Number Of Trees');
    ylabel('Std');
end