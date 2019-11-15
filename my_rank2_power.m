function [F2] = my_rank2_power(u,v,b)
    A = u*transpose(u) + v*transpose(v);
    F2 = A;
    F2 = F2*b;
    for i=1:9;
        F2 = A*F2;
    end
    end