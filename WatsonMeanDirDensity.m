function [y]=WatsonMeanDirDensity(x, k, p)
% This is the tangent direction density of Watson distribution. See the
% SphereDistributionsRand.pdf file for detail description and formulas.
%
% Usage:
%   [y]=WatsonMeanDirDensity(x, k, p);
%
% Inputs:
%   x: The tangent direction value. should be in [-1 1].
%
%   k: The kappa parameter of the Watson distribution.
%
%   p: The dimension of the Watson distribution.
%
% Outputs:
%   y : The density value of the Watson tangent density.
%
% Function is written by Yu-Hui Chen, University of Michigan
% Contact E-mail: yuhuic@umich.edu
%
if((x<-1) | (x>1))
    error('Input of x should be within -1~1');
end
Coeff = gamma(p/2) * (gamma((p-1)/2)*sqrt(pi)*kummer(1/2,p/2,k))^(-1);
y = Coeff * exp(k*x.^2).*(1-x.^2).^((p-3)/2);
end