function [y]=VMFMeanDirDensity(x, k, p)
    if((x<-1) | (x>1))
       error('Input of x should be within -1~1'); 
    end
%     Coeff = (k/2)^(p/2-1) * (gamma((p-1)/2)*gamma(1/2)*besseli((p-1)/2,k))^(-1);
    Coeff = (k/2)^(p/2-1) * (gamma((p-1)/2)*gamma(1/2)*besseli(p/2-1,k))^(-1);
    y = Coeff * exp(k*x).*(1-x.^2).^((p-3)/2);
end