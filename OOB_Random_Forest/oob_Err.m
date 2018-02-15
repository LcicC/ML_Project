%Mean prediction error for a tree
function oob = oob_Err(Y, Ypred)
    oob = 0;
    for i = 1:size(Y,1)
        oob = oob + loss_F(Y(i),Ypred(i));
    end
    oob = oob/size(Y,1);
end