function [RandWatson] = randWatson(N, mu, k)
    mu = mu(:)';
    if(norm(mu,2)<1-0.0001 || norm(mu,2)>1+0.0001)
        error('Mu should be unit vector');
    end
    p = size(mu(:),1);    
    tmpMu = [1 zeros(1,p-1)];
    t = randWatsonMeanDir(N, k, p);
    RandSphere = randUniformSphere(N, p-1);

    RandWatson = repmat(t, [1 p]).*repmat(tmpMu, [N 1]) + repmat((1-t.^2).^(1/2), [1 p]).*[zeros(N,1) RandSphere];
    % Rotate the distribution to the right direction
    Otho = null(mu);
    Rot = [mu(:) Otho];
    RandWatson = (Rot*RandWatson')';
end