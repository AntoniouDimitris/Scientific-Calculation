for j=1:6
i = j+6;
n = pow2(i);
A = (rand(n));
b = (rand(n,1));

tic
for t=1:500 %500 epanalipseis
[L,U] = lu(A);
end
timing(j) = toc./500
tic
for t=1:500
B = A*b;
end
timing1(j)=toc./500
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