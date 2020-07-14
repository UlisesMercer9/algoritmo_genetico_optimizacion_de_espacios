function [individuohijo1, individuohijo2] = cruza(individuo1, individuo2)

A = length(individuo1);
B = length(individuo2);


mitad = randi(A,1,1); 


individuo1;
individuo2;

Mitad1 = A/2;
Mitad2 = B/2;

parte1=individuo1(1:mitad);
parte2=individuo2(1:mitad);
parte3=individuo2(mitad+1:B);

individuohijo1 = individuo1;
individuohijo2 = individuo2;

individuohijo1(mitad+1:B) = parte3;
individuohijo2(1:mitad) = parte2;


individuohijo1;
individuohijo2;

for y = 1:25;
    for z = 1:72;
        if z == y;
        else
            if individuohijo1(z)  == individuohijo1(y);
               individuohijo1(y) = 50;
            end
        end
    end
end

for y = 1:25;
    for z = 1:72;
        if z == y;
        else
            if individuohijo2(z)  == individuohijo2(y);
               individuohijo2(y) = 50;
            end
        end
    end
end

individuohijo2;


for remplazar = 1:25
    if individuohijo1(remplazar)==50
        for buscado = 1:25
            encontrado = false;
            for busqueda = 1:72
                if individuohijo1(busqueda) == buscado
                    encontrado = true;
                end
            end
            if encontrado == false
                individuohijo1(remplazar) = buscado;
            end
        end
    end
end

for remplazar = 1:25
    if individuohijo2(remplazar)==50
        for buscado = 1:25
            encontrado = false;
            for busqueda = 1:72
                if individuohijo2(busqueda) == buscado
                    encontrado = true;
                end
            end
            if encontrado == false
                individuohijo2(remplazar) = buscado;
            end
        end
    end
end

for k = 1:72
    if individuohijo1(k) == 50;
        individuohijo1(k) = 0;
    end
    if individuohijo2(k) == 50
        individuohijo2(k) = 0;
    end
end


individuohijo1;
individuohijo2;

end