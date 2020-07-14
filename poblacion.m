
function poblacion

  pobT=[];
  distT=[];
  for i=1:100
    pob=crearIndividuo;
    
    distancia = fitness(pob);
   
    vpob = reshape(pob.',1,[]);
   
    pobT=[pobT;vpob]; %concatenacion de vector a matriz
    distT=[distT;distancia]; 
  end
  
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%  MENOR A MAYOR %%%%%%%%%%%%%%%%%%%%%%%%%%%%

  pobT;
  
  distT;
  
  total = [pobT  distT];
  
  A = sort(distT);
  
  total2 = zeros(100,73);
  
  c1=[];
  for j = 1:100
      for k = 1:100
          for l = 1:73
            if total(k,l) == A(j)
             total(k,l);
              c1 = k; 
              for n = c1:c1
                  for m = 1:73
                     total2(j,m) = total(n,m);
                  end
              end
            end 
          end
      end
  end
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%% SELECCION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
   [setPadresUno setPadresDos] = seleccion(total2);
   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%% CRUZA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
   setPadresUno(:,73) = [];
   
   setPadresDos(:,73) = [];
   
   setPadresT = vertcat(setPadresUno,setPadresDos);
   
   setHijos1 = [];
   setHijos2 = [];
  
   for m = 1:25
           [a b] = cruza(setPadresUno(m,:),setPadresDos(m,:));  
           setHijos1 = [setHijos1;a];
           setHijos2 = [setHijos2;b];
   end
  
    setHijos = vertcat(setHijos1,setHijos2);
    
    
    setPadresT(2,:)%%%%% Comprobación mutación
    setHijos(2,:) %%%%%% Comprabación mutación
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%  MUTACION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  setHijosM = [];
   for p = 1:50
      c = mutacion(setHijos(p,:));
      setHijosM = [setHijosM;c];
   end
   
   setHijos(1,:);
   setHijosM(1,:);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  nuevaPob = vertcat(setPadresT,setHijosM);
  
  nuevaPob;
  
  

end