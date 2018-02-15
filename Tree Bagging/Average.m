%Returns the avg of the votes
function Ypred = Average(Forest, Xts)
    sz = size(Xts,1);
    Ypred = zeros(sz,1);
    for i = 1:sz
        %Initialize array of votes for each x
        votes = zeros(1,size(Forest,2));
        for k = 1:size(Forest,2)
            votes(k) = predict(Forest{k},Xts(i,:));
        end
        Ypred(i,1) = get_AVG(votes);
    end
end