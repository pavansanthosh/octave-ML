function J=mygradientdescent(X,y,theta,alpha,num_iters)
m=length(y);
x=X(:,2);
J_history=zeros(num_iters,1);
for iter=1:num_iters;
theta0=theta(1)-alpha*(1/m)*sum(X*theta - y);
theta1=theta(2)-alpha*(1/m)*sum((X*theta - y).*x);
theta=[theta0;theta1];
J_history(iter)=computecost(X,y,theta,m);
end;
disp(min(J_history))
plot(J_history)
end;

function Q= computecost(X,y,theta,m)
Q=(1/2*m)*sum((X*theta-y).^2);
endfunction

X=[1,1;1,5;1,3];
y=[1;5;3];
theta=[0.1;0.01];
alpha=0.03;
num_iters=10;
J=mygradientdescent(X,y,theta,alpha,num_iters)
J
 
