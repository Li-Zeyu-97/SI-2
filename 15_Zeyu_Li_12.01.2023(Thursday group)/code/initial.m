global P;
global vecY;
global vecU;
global Th;
global et;
global vecC;

vecY = [0, 0, 0];
vecU = [0, 0, 0];
vecC = [0, 0, 0];
Th = zeros(9,1);
P = eye(9);
et = 0;
sim('model10_oe.slx')



 