function winner = get_Winner(arr)
    %num_votes(i) is the number of the votes for candidates(i)
    %candidates = [1, 2 ,3, 4, 5, 6, 7, 8, 9];
    num_votes = zeros(1,9);
    for i = 1:size(arr,2)
        candidate = arr(i);
        num_votes(candidate) = num_votes(candidate) + 1;
    end
    
   
    %Get Winner
    winner = 1;
    aux = num_votes(1);
    for k = 2:size(num_votes,2)
        if num_votes(k) > aux
            winner = k;
            aux = num_votes(k);
        end
    end    
end
