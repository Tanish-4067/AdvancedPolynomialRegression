function [theta, J_history] = gradientDescentPol(X, y, theta, alpha, num_iters)

m = length(y); 
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

   
    sen = X*theta;
    h2 = sen-y;
    final = X'*h2;
    %sum1 = sum(h2.*X(:,1));
    %sum2 = sum(h2.*X(:,2));
    %sum3 = sum(h2.*X(:,3));
    %sum4 = sum(h2.*X(:,4));
    %sum5 = sum(h2.*X(:,5));
    %sum6 = sum(h2.*X(:,6));
    %sum7 = sum(h2.*X(:,7));
    %sum8 = sum(h2.*X(:,8));
    %sum9 = sum(h2.*X(:,9));
    %sum10 = sum(h2.*X(:,10));
    %sum11 = sum(h2.*X(:,11));
    %sum12 = sum(h2.*X(:,12));
    %sum13 = sum(h2.*X(:,13));
    %finaley = [ sum1;sum2;sum3;sum4;sum5;sum6;sum7;sum8;sum9;sum10;sum11;sum12];
    theta = theta - alpha*final/m; 
    J_history(iter) = computeCost(X, y, theta);
    disp( J_history(iter))
    if(J_history(iter)<0.0005)
        break
    end
end

end
