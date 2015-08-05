function t = randWatsonMeanDir(N, k, p)
% This function generate random samples from the tangent direction of 
% Watson distribution using rejection sampling. The density of is
% described in WatsonMeanDirDensity function. See the
% SphereDistributionsRand.pdf file for detail description and formulas.
%
% Usage:
%   [t] = randWatsonMeanDir(N, k, p);
%
% Inputs:
%   N: The number of samples one wants to generate.
%
%   k: The kappa parameter of the Watson distribution.
%
%   p: The dimension of the Watson distribution.
%
% Outputs:
%   t : A N x 1 vector which are the random samples from the Watson's 
%   tangent distribution.
%
% Function is written by Yu-Hui Chen, University of Michigan
% Contact E-mail: yuhuic@umich.edu
%
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