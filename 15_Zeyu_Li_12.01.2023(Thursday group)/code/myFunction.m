%model_10 
function result = myFunction(x)

%online method
  global vecY;
  global vecU;
  global Th;
  global P;
  global et;

  u_t = x(1);
  y_t = x(2);

  vecY = [vecY y_t];
  vecU = [vecU u_t];

  phy = [-vecY(end-1) -vecY(end-2) -vecY(end-3) vecU(end-1) vecU(end-2) vecU(end-3)]';
  et = y_t - transpose(phy) * Th;
  Th = Th +((P * phy)/(1 + transpose(phy) * P * phy)) * et;
  P = P - ((P * phy * transpose(phy) * P)/(1 + transpose(phy) * P * phy));
  
  result = Th;

end