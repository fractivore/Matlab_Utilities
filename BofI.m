function [fieldStrength] = BofI(currentIn)
    fieldStrength = ((4/5)^(3/2))*(4*pi*10^-7)*(124/.15)*currentIn;
end