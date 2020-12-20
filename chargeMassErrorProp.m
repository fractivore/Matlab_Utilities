function [sigmaChargeMassRatio] = chargeMassErrorProp(rCIn,rCErr,rIn,rErr,iIn,iErr,vIn,vErr)
    constantVal = 5*(4*pi*(10^-7)*124)^-2;
    delRC = constantVal*rCIn.*(rIn.^-2).*(iIn.^-2).*vIn;
    delR = -constantVal*(rCIn.^2).*(rIn.^-3).*(iIn.^-2).*vIn;
    delI = -constantVal.*(rCIn.^2).*(rIn.^-2).*(iIn.^-3).*vIn;
    delV = (constantVal/2)*(rCIn.^2).*(rIn.^-2).*(iIn.^-2);
    
    sigmaRatioSquared = (rCErr.^2).*(delRC.^2) + (rErr.^2).*(delR.^2) +(iErr.^2).*(delI.^2)+(vErr.^2).*(delV.^2);
    sigmaChargeMassRatio = sqrt(sigmaRatioSquared);
end