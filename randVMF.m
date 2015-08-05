function [RandVMF] = randVMF(N, mu, k)
    mu = mu(:)';
    if(norm(mu,2)<1-0.0001 || norm(mu,2)>1+0.0001)
        error('Mu should be unit vector');
    end
    p = size(mu,2);    
    tmpMu = [1 zeros(1,p-1)];
    RandVMF = zeros(N, p);
    t = randVMFMeanDir(N, k, p);
    RandSphere = randUniformSphere(N, p-1);

    RandVMF = repmat(t, [1 p]).*repmat(tmpMu, [N 1]) + repmat((1-t.^2).^(1/2), [1 p]).*[zeros(N,1) RandSphere];
    % Rotate the distribution to the right direction
    Otho = null(mu);
    Rot = [mu' Otho];
    RandVMF = (Rot*RandVMF')';
    
%     figure;
%     scatter3(RandVMF(:,1), RandVMF(:,2), RandVMF(:,3)), view([5, -5, 5]), axis([-2 2 -2 2 -2 2]);
end