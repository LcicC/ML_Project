function err = myErr(Ypred, Yts)
   %{
   sz = size(Yts(:));
   sz = sz(1);
   
   err = 0;
   for i=1:sz
       if (Ypred(i) ~= Yts(i))
           err = err + 1;
       end
   end
    %}
   
   err = sum(Ypred ~= Yts)/numel(Yts);
end