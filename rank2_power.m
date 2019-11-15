  function [F1] = rank2_power(u,v,b)
    A = u*transpose(u) + v*transpose(v);
    F1 = A;
    for i=1:9
        F1 = F1*A;
    end
    F1 = F1*b;
    end