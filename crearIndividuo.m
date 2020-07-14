 function u = crearIndividuo
 
   d = 0;
   while d ~= 2
   u = zeros(8,9);
   y = randperm(25);
   posicion1 = find(y==2);
   y(posicion1) = [];
   posicion2 = find(y==8);
   y(posicion2) = [];
   posicion3 = find(y==10);
   y(posicion3) = [];
   posicion4 = find(y==21);
   y(posicion4) = [];
   posicion5 = find(y==23);
   y(posicion5) = [];
   posicion6 = find(y==25);
   y(posicion6) = [];
    
   u(1,1) = y(1);
   u(1,2) = 2;
   u(1,3) = y(2);
   u(1,4) = y(3);
   u(1,5) = y(4);
   u(1,6) = y(5);
   u(1,7) = y(6);
   u(1,9) = 8;
   u(2,9) = y(7);
   u(3,3) = 10;
   u(3,4) = y(8);
   u(3,5) = y(9);
   u(3,6) = y(10);
   u(3,7) = y(11);
   u(3,9) = y(12);
   u(4,7) = y(13);
   u(4,9) = y(14);
   u(5,7) = y(15);
   u(5,9) = y(16);
   u(6,7) = y(17);
   u(6,9) = 21;
   u(7,7) = y(18);
   u(7,9) = 23;
   u(8,7) = y(19);
   u(8,9) = 25;
   
   %v = reshape(u.',1,[]);
   
   %v;
   d = distancia(u);
   
   end
end