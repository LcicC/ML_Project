function winner = get_WinnerBin(arr)
    
    pos = 0;
    neg = 0;
    
    for i = 1:size(arr,2)
        if arr(i)==1
            pos =  pos+1;
        end
        
        if arr(i)== -1
            neg = neg+1;
        end
    end
    
   
    %Get Winner
   if pos > neg
       winner = 1;
   end
   
   if neg >= pos
       winner = -1;
   end
   

end
