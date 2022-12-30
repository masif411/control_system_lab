w=1;
a1=0.1;
a2=0.4;
a3=0.7;
a4=1;
a5=2;
G1=tf([w^2],[1,2*a1*w,0])
f1=feedback(G1, [1])
step(f1)
stepinfo(f1)
hold on
G2=tf([w^2],[1,2*a2*w,0])
f2=feedback(G2, [1])
step(f2)
stepinfo(f2)
hold on
G3=tf([w^2],[1,2*a3*w,0])
f3=feedback(G3, [1])
step(f3)
stepinfo(f3)
hold on
G4=tf([w^2],[1,2*a4*w,0])
f4=feedback(G4, [1])
step(f4)
stepinfo(f4)
hold on
G5=tf([w^2],[1,2*a5*w,0])
f5=feedback(G5, [1])
step(f5)
stepinfo(f5)
hold on
grid
legend('f1=0.1','f2=0.4','f3=0.7','f4=1','f5=2')
