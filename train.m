function optim=train(X,y,noclass)
  optim=zeros(noclass,size(X,2));
  options=optimset('gradobj','on','maxiter',4);
  lambda=0.001;
  for i=1:noclass
    ynot=[y==i];
    optim(i,:)=fmincg(@(theta)(costcomp(X,ynot,theta,lambda)),zeros(size(X,2),1),options);
    end
    end
    
  