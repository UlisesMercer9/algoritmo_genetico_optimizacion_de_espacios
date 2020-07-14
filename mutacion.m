function [individuoM] = mutacion(individuo)

L = length(individuo);

A = randi(L,1,1); 
B = randi(L,1,1); 

while A == B
    A = randi(L,1,1); 
    B = randi(L,1,1); 
end

posicion1 = unique(A);
posicion2 = unique(B);

while individuo(posicion1) == 0 || individuo(posicion1) == 2 || individuo(posicion1) == 8 || individuo(posicion1) == 10 || individuo(posicion1) == 21 || individuo(posicion1) == 23 || individuo(posicion1) == 25
    A = randi(L,1,1); 
    posicion1 = unique(A);
end

while individuo(posicion2) == 0 || individuo(posicion2) == 2 || individuo(posicion2) == 8 || individuo(posicion2) == 10 || individuo(posicion2) == 21 || individuo(posicion2) == 23 || individuo(posicion2) == 25
    B = randi(L,1,1);
    posicion2 = unique(B);
end


extracion1=individuo(posicion1);
extracion2=individuo(posicion2);

individuoM = individuo;

individuoM(posicion1) = extracion2;
individuoM(posicion2) = extracion1;

individuoM;

end