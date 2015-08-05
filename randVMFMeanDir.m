function [t] = randVMFMeanDir(N, k, p)
    min_thresh = 1/(5*N);
    
    xx = -1:0.000001:1;
    yy = VMFMeanDirDensity(xx, k, p);
    cumyy = cumsum(yy)*(xx(2)-xx(1));
    
    leftBound = xx(find(cumyy>min_thresh,1));
    
    %%% Fin the left bound
    xx = linspace(leftBound, 1, 1000);
    yy = VMFMeanDirDensity(xx, k, p);
    
    M = max(yy);
    t = zeros(N,1);
    for i=1:N
        while(1)
            x = rand*(1-leftBound)+leftBound;
            h = VMFMeanDirDensity(x, k, p);
            draw = rand*M;
            if(draw<=h)
                break;
            end
        end
        t(i) = x;
    end

end