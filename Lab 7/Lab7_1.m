s= tf('s');
Ku=12.5;
Tu= 2.85;
Ti= Tu/2 ;
Td = Tu/8 ;
Kp = 0.6*Ku;
Ki=Kp/Ti;
Kd=Kp*Td;
G= 10/((s+1)*(s+2)*(s+3)*(s+4));
C =pid(Kp,Ki,Kd);
T = feedback(C*G,1)
t = 0:0.01:10;
step(T,t)
