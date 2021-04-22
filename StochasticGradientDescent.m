function [theta] = StochasticGradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

rand_pos = randperm(m);
rand_pos = rand_pos';%array of random positions
% new array with original data randomly distributed 
X_rand = zeros(m,length(theta));
y_rand = zeros(m,1);
for k = 1:m
    X_rand(k,:) = X(rand_pos(k),:);
    y_rand(k) = y(rand_pos(k));
end

for iter = 1:m

  
    hypo =  sum(X_rand(iter,:)*theta)-y_rand(iter);
    theta = theta - alpha*(hypo)*(X_rand(iter,:)');
    disp(theta);
    
   
end

end
