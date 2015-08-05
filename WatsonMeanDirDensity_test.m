clear;
% Testing by numerical integral
k=35;
p=4;
f = @(x) WatsonMeanDirDensity(x,k,p);
integral(f,-1,1)  % Should be 1

k=100;
p=3;
f = @(x) WatsonMeanDirDensity(x,k,p);
integral(f,-1,1)  % Should be 1

k=700;
p=4;
f = @(x) WatsonMeanDirDensity(x,k,p);
integral(f,-1,1)  % Should be 1
