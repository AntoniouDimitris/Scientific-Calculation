for j=1:4
    i=j+6;
    n=pow2(i);
    A=(rand(n)); 
    b=(rand(n,1)); 
    tic % ksekinaei o xronos gia lu
    [L,U]=lu(A);  
    xronos(j)=toc 
    %A apo8ikeuoume ton xrono pou vrikame
    tic   % ksekinaei o xronos gia A*B
    B=A*b;
    xronos1(j)=toc
end
    figure
    n=7:1:10;
    plot(n,xronos,'r-*');
    hold on;
    plot(n,xronos1,'b-o');
    hold off;
    xlabel('n')
    ylabel('xronos')
    legend('LU','A*B')
