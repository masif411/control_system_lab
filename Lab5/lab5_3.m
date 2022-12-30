ka1=20;
ka2=30;
ka3=50;
ka4=60;
ka5=80;
M=5;
L=tf([1],[1,20,0]);
G1=series(ka1*M,L)
f1=feedback (G1,[1])
step(f1)
stepinfo(f1)
hold on
G2=series(ka2*M,L)
f2=feedback (G2,[1])
step(f2)
stepinfo(f2)
hold on
G3=series(ka3*M,L)
f3=feedback (G3,[1])
step(f3)
stepinfo(f3)
hold on
G4=series(ka4*M,L)
f4=feedback (G4,[1])
step(f4)
stepinfo(f4)
hold on
G5=series(ka5*M,L)
f5=feedback (G5,[1])
step(f5)
stepinfo(f5)

grid
legend('f1=20','f2=30','f3=50','f4=60','f5=80')
