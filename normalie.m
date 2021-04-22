function[X] = normalie(x)
X = zeros(size(x));
X(:,1) = ones(length(x),1);
for i=2:size(x,2)  %as column one is constant 1 no std therefore will reach infinity
    mu = mean(x(:,i));
    sigma = std(x(:,i));
    X(:,i) = (x(:,i)-mu)./sigma;
end
end
