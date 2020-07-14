clc;
clear all;


pob = crearPoblacion;

pob;
for i = 1:10000
    disp(i);

    total = cicloFit(pob);

    pob=ordenamiento(total);

    [setPadresUno setPadresDos] = seleccion(pob);

    [setPadresT setHijos] = cruzaIndividuos(setPadresUno, setPadresDos);

    setHijosM = mutacionIndividuo(setHijos);

    nuevaPob = vertcat(setPadresT,setHijosM);
  
    pob = nuevaPob;

end

pob;

objetivoBeta = cicloFit(pob);

objetivo = ordenamiento(objetivoBeta);

objetivo(:,73) = [];

layout = objetivo(1,:);

layoutFinal = vec2mat(layout,9)





