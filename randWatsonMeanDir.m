function t = randWatsonMeanDir(N, k, p)
    min_thresh = 1/(5*N);
    if (k<-35)
        error('Kappa < -35 is not implemented in this function.');
    end
    xx = 0:0.000001:1;
    yy = WatsonMeanDirDensity(xx, k, p);
    cumyy = cumsum(yy)*(xx(2)-xx(1));
    
    leftBound = xx(find(cumyy>min_thresh/2,1));
    
    %%% Fin the left bound
    xx = linspace(leftBound, 1, 1000);
    yy = WatsonMeanDirDensity(xx, k, p);
    
    M = max(yy);
    t = zeros(N,1);
    for i=1:N
        while(1)
            x = rand*(1-leftBound)+leftBound;
            h = WatsonMeanDirDensity(x, k, p);
            draw = rand*M;
            if(draw<=h)
                break;
            end
        end
        if(rand>0.5)
            t(i) = x;
        else
            t(i) = -x;
        end
    end

end