function J = computeCostPol(X, y, theta)


m = length(y); % number of training examples


J = 0;
sen = X*theta;
h2 = sen-y;
h3 = h2.^2;
J = sum(h3)/(2*m);

end
