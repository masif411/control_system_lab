s= tf('s');
Ku=60;
Tu= 1.892;
Ti= Tu/1.2 ;

Kp = 0.45*Ku;
Ki=Kp/Ti;

G= 1/((s+1)*(s+2)*(s+3));
C =pid(Kp,Ki);
T = feedback(C*G,1)
t = 0:0.01:30;
step(T,t)
