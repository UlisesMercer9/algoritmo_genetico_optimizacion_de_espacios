function sumaDist = distancia(u)

[r c] = size(u);

v3= [];
v4=[];
v5=[];

for i = 1:r
    for j = 1:c
        if u(i,j) == 3
            v3 = [i j];
        end
        if u(i,j) == 4
            v4 = [i j];
        end
        if u(i,j) == 5
            v5 = [i j];
        end
    end
end


dist1 = sqrt((v4(2) - v3(2))^2 + (v4(1) - v3(1))^2);

dist2 = sqrt((v5(2) - v4(2))^2 + (v5(1) - v4(1))^2);
     
sumaDist = dist1 + dist2;


end