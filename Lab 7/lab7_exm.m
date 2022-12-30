s = tf('s');
zeta = 0.707;
wn = 4;
G = 1/(s*(s+10)*(s+2*zeta*wn));
Kp = 370;
Kd= 60;
Ki=50;
C = pid(Kp,Ki,Kd);
T = feedback(C*G,1)
t = 0:0.01:2;
step(T,t)
