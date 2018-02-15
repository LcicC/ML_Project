%Wins the class with the highest number of votes
function Ypred = Vote(Forest, Xts)
    sz = size(Xts,1);
    Ypred = zeros(sz,1);
    for i = 1:sz
        %Initialize array of votes for each x
        votes = zeros(1,size(Forest,2));
        for k = 1:size(Forest,2)
            votes(1,k) = predict(Forest{k},Xts(i,:));
        end
        %Get the winner 
        Ypred(i,1) = get_Winner(votes);
    end
end