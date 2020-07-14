function pobT = crearPoblacion

  pobT=[];
  
  for i=1:100
    pob=crearIndividuo;
    
    vpob = reshape(pob.',1,[]);
   
    pobT=[pobT;vpob]; %concatenacion de vector a matriz
  end
     
end
  
  
  
  