s= tf('s');
Ku=60;
Tu= 1.892;
Ti= Tu/2 ;
Td = Tu/8 ;
Kp = 0.6*Ku;
Ki=Kp/Ti;           %Ki= 44.33
Kd=Kp*Td*3;           %Kd= 7.308
G= 1/((s+1)*(s+2)*(s+3));
C =pid(Kp,Ki,Kd);
T = feedback(C*G,1)
t = 0:0.01:15;
step(T,t)
