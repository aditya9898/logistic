function X=feature(x,no)
  p=x;
  for i=2:no
    x=[x,p.^i];
    end
    X=x;
    end
    