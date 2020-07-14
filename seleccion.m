function [subSetUno, subSetDos] = seleccion(total2)
   
   %total2(:,73) = [];
   
   set = zeros(50,73);
   
   for i = 1:50
       for j = 1:73
            set(i,j) = total2(i,j);
       end
   end
   
   set;
   
   %[m,n] = size(set) %comprobar la dimension de la matriz
   
   
   subSetUno = zeros(25,73);
   for k = 1:25
       for l = 1:73
           subSetUno(k,l) = set(k,l);
       end
   end
   
   subSetUno;
   
   subSetDosB = zeros(25,73);
   for a = 26:50
       for b = 1:73
           subSetDosB(a,b) = set(a,b);
       end
   end
   
   subSetDosB([1:25],:)=[];
   
   subSetDosB;
   
   subSetDos = flipud(subSetDosB);
   
   subSetDos;
   
   
   
end