J=10.8E8;
k=10.8E8;
a=1;
b=8;
c=10*(3.14/180);
Control=tf([k,k*a],[1,b])
Spacecraft=tf([1],[J,0,0])
sys1=series(Control,Spacecraft)
T=feedback(sys1,1)
step(T)
hold on
J=0.2*10.8E8;
Spacecraft=tf([1],[J,0,0])
sys1=series(Control,Spacecraft)
T=feedback(sys1,1)
step(T)
hold on
J=0.5*10.8E8;
Spacecraft=tf([1],[J,0,0])
sys1=series(Control,Spacecraft)
T=feedback(sys1,1)
step(T)
legend('10%','20%','50');