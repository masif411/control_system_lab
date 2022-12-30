Control=tf([1],[1,1]);
Plant=tf([1,2],[1,3]);
H=1
sys1=series(Control,Plant)
sys2=feedback(sys1,H)
step(sys2)
stepinfo(sys2)
