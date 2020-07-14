function [setPadresT, setHijos] = cruzaIndividuos(setPadresUno, setPadresDos)

   setPadresUno(:,73) = [];
   
   setPadresDos(:,73) = [];
   
   setPadresT = vertcat(setPadresUno,setPadresDos);
   
   setHijos1 = [];
   setHijos2 = [];
  
   for m = 1:25
           [a b] = cruza(setPadresUno(m,:),setPadresDos(m,:)); 
           if distancia(a) ~= 2 || evaluarEsp(vec2mat(a,9)) == 1
               a_aux = crearIndividuo;
               setHijos1 = [setHijos1;reshape(a_aux.',1,[])];
           else
               setHijos1 = [setHijos1;a];
           end
           if distancia(b) ~= 2 || evaluarEsp(vec2mat(b,9)) == 1
               b_aux = crearIndividuo;
               setHijos2 = [setHijos2;reshape(b_aux.',1,[])];
           else
               setHijos2 = [setHijos2;b];
           end
   end
  
    setHijos = vertcat(setHijos1,setHijos2);
end