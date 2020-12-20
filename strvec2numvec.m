function [outputArg] =strvec2numvec(inputArg)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
outputArg=[];
    for ind = 1:length(inputArg)
        a=inputArg(ind);
        outputArg = cat(1,outputArg,str2num(a{1}));
    end
end
