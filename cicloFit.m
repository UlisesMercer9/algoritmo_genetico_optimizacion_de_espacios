function total = cicloFit(nuevaPob)

total = [];
   for p = 1:100
      c = f_Fitness(nuevaPob(p,:));
      total = [total;c];
   end


end
