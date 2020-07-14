function distanciaT = fitness(u)

p1 = [2 1 2 3 4 5  9 10 12 14 12 11 21 11 12 14 6 7 1];


c1=[];
 c2=[];
 for l = 1:19
  for n = 1:8
      for m = 1:9
          if u(n,m) == p1(l)
             u(n,m);
             c1 = [c1;n];
             c2 = [c2;m];
          end      
      end
  end
 end
  

 distanciaUno = 0;
 for i = 1:18
     dis = sqrt((c1(i+1)-c1(i))^2 + (c2(i+1)-c2(i))^2);
     distanciaUno = distanciaUno + dis;
 end






p2 = [2 1 2 3 4 5 11 10 12 14 12 11 12 15 12 11 12 14 11 8 6 7 1];

c3=[];
 c4=[];
 for a = 1:23
  for b = 1:8
      for c = 1:9
          if u(b,c) == p2(b)
             u(b,c);
             c3 = [c3;b];
             c4 = [c4;c];
          end      
      end
  end
 end
  

 distanciaDos = 0;
 for j = 1:22
     dis = sqrt((c3(j+1)-c3(j))^2 + (c4(j+1)-c4(j))^2);
     distanciaDos = distanciaDos + dis;
 end
 
 
 
 p3 = [2 1 2 3 4 5 11 10 12 14 12 11 12 13 12 11 12 14 11 6 7 1];

c5=[];
 c6=[];
 for x = 1:22
  for y = 1:8
      for z = 1:9
          if u(y,z) == p3(x)
             u(y,z);
             c5 = [c5;z];
             c6 = [c6;z];
          end      
      end
  end
 end
  

 distanciaTres = 0;
 for k = 1:21
     dis = sqrt((c5(k+1)-c5(k))^2 + (c6(k+1)-c6(k))^2);
     distanciaTres = distanciaTres + dis;
 end
 
 
 distanciaT = distanciaUno + distanciaDos + distanciaTres;

end