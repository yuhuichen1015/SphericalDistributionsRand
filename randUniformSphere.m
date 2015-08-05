function [RanSphere] = randUniformSphere(N, dim)
    randNorm = normrnd(zeros(N,dim), 1, [N, dim]);
    RanSphere = zeros(N,dim);
    for i=1:N
        RanSphere(i,:) = randNorm(i,:)./norm(randNorm(i,:));
    end    
end