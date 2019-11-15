for i=6:11;
    n = pow2(i);
    u = rand(n,1);
    v = rand(n,1);
    b = rand(n,1);
    
    
    %ftiaxnoume ta handle gia ka8e sinartisi
    f = @rank2_power;
    g = @my_rank2_power;
    
    %kai ta antistoixa handle gia tin klisi twn timeit
    tf = @ () f(u,v,b);
    tg = @ () g(u,v,b);
    
    Ftiming(i-5) = timeit(tf);
    Gtiming(i-5) = timeit(tg);
    
    %ipologismos twn Flops/s
    Fop(i-5) = 18*(n^3) - 4*(n^2) - n; %ari8mos praksewn rank2_power
    GflopsF(i-5) = (Fop(i-5)./Ftiming(i-5))*(10^-9);
    Gop(i-5) = 23*(n^2) - 10*n; %ari8mos praksewn my_rank2_power
    GflopsG(i-5) = (Gop(i-5)./Gtiming(i-5))*(10^-9);
end

figure

i=6:11;
n = pow2(i);

plot(n,Ftiming,'r-o')
hold on
plot(n,Gtiming,'b--x')
hold off
xlabel('n^2')
ylabel('Timing')
legend('rank2power','myrank2power')

figure

i=6:11;
n = pow2(i);

plot(n,GflopsF,'r-o')
hold on
plot(n,GflopsG,'b--x')
hold off
xlabel('n^2')
ylabel('Gflops')
legend('rank2power','myrank2power')


    
    
    