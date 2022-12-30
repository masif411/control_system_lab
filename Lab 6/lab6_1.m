G1=tf([1],[1,10]);
G2=tf([1],[1,1]);
G3=tf([1,0,1],[1,4,4]);
G4=tf([1,1],[1,6]);
H1=tf([1,1],[1,2]);
H2=tf([2],[1]);
H3=1;

sys1=series(H2,1/G4)
sys2=series(G3,G4)
sys3=feedback(sys2,H1,+1)
sys4=series(sys3,G2)
sys5=feedback(sys4,sys1)
sys6=series(sys5,G1)
sys7=feedback(sys6,H3)
P=pole(sys7)
Z=zero(sys7)
pzmap(sys7)