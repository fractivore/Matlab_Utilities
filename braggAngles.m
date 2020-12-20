function [theta] = braggAngles(wavelength, d, integers)
    theta = asin(wavelength*integers/(2*d))*(180/pi);
end