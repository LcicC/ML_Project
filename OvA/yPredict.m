%Apply each w to Xts and take the max
function Ypred = yPredict(W, Xts)
    sz = size(Xts,1);
    Ypred = zeros(sz,1);
    for i = 1:sz
        xnew = Xts(i,:);
        aux = 0;
        for k = 3:9
            if (xnew * W(:,k))>aux
                aux = xnew * W(:,k);
                Ypred(i) = k;
            end
        end
    end
end