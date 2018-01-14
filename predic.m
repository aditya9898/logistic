function predion=predic(X,optim)
  for i=1:size(X,1)
    set=sigmoid((X(i,:))*(optim'));
    [ma,predion(i)]=max(set);
    end
    end
    