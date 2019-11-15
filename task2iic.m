for j=1:6
    i=j+6;
    n=pow2(i);
    A=(rand(n));
    b=(rand(n,1));
    f = @ () lu(A);
    timing(j) = timeit(f)
    f1 = @ () A*b;
    timing1(j)= timeit(f1)
end
 figure
    n=7:1:12;
    plot(n,timing,'r-*')
    hold on;
    plot(n,timing1,'b-o');
    hold off;
    xlabel('n')
    ylabel('timing')
    legend('LU','A*B')

