function [j,grad]=costcomp(X,y,theta,lambda)
  m=length(y);
  
  j=(1/m)*sum(((-y).*log(sigmoid(X*theta)))-((1-y).*log(1-(sigmoid(X*theta)))))+((lambda/2*m)*sum(theta.^2));
  grad=zeros(size(theta));
  ttemp=theta;
  ttemp(1)=0;
  for i=1:length(theta)
    grad(i)=(1/m)*sum((sigmoid(X*theta)-y).*X(:,i))+((lambda/m)*ttemp(i));
    end
    end
    