function [s_result, ybar] = pooled_variance(n, y, s)
%POOLED_VARIANCE Summary of this function goes here
%   Detailed explanation goes here

ybar = sum(y.*n)/sum(n);
K = length(n);
numerator = 0;
for k=1:K
   numerator = numerator + (n(k)-1 ).*(s(k).^2) + n(k)*((y(k)-ybar).^2);
end
denominator = sum(n) - 1;

s_result = sqrt(numerator./denominator);
end