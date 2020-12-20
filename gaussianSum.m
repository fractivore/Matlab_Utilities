function[superimposedGaussians] = gaussianSum(n,independantIn,dependantIn,deltaX)
    gaussianVectors = [];
    for ind = 1:n
        lowerBound = input("Please enter the lower bound for gaussian " + ind);
        upperBound = input("Please enter the upper bound for gaussian " + ind);
        [thisMu,thisSig,area] = selectiveGaussian(independantIn,dependantIn,lowerBound,upperBound,deltaX);
        gaussVec = area*(1/(thisSig*(2*pi)^(1/2)))*exp(-((independantIn-thisMu).^2)/(2*thisSig^2));
       gaussianVectors = cat(1,gaussianVectors,gaussVec);
    end
    superimposedGaussians = sum(gaussianVectors);
end