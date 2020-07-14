function total2 = ordenamiento(total)

  distT = total(:,73);

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


end