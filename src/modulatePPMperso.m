function [sl] = modulatePPMperso(b, Fse)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

po = [];
p1 = [];
sl = [];
%On construit po et p1
for i=1:Fse
    c=1;
    if i<=floor(Fse/2)
        c=0;
    end
    po = [po c];
end
    
p1 = 1-po;


for j=1:length(b)
    temp = b(j);
    if temp==0          % si le bit est à 0 on lui associe po
        sl= [sl po];
    else                % si le bit est à 1 on lui associe p1
        sl= [sl p1];
    end
end


end

