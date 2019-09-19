function [rl,brep] = demodulatePPMperso(sl,Fse)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

p = [];

for i=1:Fse
    c=-0.5;
    if i<=floor(Fse/2)
        c=0.5;
    end
    p = [p c];
end

rl = conv(p,sl);

brep = [];

for k=1:(length(rl)+1)/Fse-1
    
    c=0;
    if rl(k*Fse-1) <= 0
        c= 1;
    end
    
    brep = [ brep c ];
    
end

brep


end

