function band = evaluarEsp(u)
[r c] = size(u);
band = 0;

if u(1,8) ~= 0 || u(2,1) ~= 0 || u(2,2) ~= 0 || u(2,3) ~= 0 || u(2,4) ~= 0 || u(2,5) ~= 0 || u(2,6) ~= 0 || u(2,7) ~= 0 || u(2,8) ~= 0
    band = 1;
end

if u(3,1) ~= 0 || u(3,2) ~= 0 || u(3,8) ~= 0 
    band = 1;
end

end