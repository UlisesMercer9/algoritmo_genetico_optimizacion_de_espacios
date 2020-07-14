function total = f_Fitness(vector)

    vectorM = vec2mat(vector,9);

    pobT=[];
    distT=[];
  
    distancia = fitness(vectorM);
   
    vpob = reshape(vectorM.',1,[]);
   
    pobT=[pobT;vpob]; %concatenacion de vector a matriz
    distT=[distT;distancia];
    
    pobT;
  
    distT;
  
    total = [pobT  distT];

end