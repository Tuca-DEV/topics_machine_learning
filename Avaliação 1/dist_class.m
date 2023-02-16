
function [class] = dist_class (matrix, seeds, l, n)
  %Cálculo das distâncias e das classificações
  for i = 1:l
       m_dist = inf(1, n);
       % cálculo das distâncias do objeto i entre cada centróide s
       for s = 1:n
        m_dist(s) = DISTEUCLIDIANA(seeds(s,:), matrix(i,:));
       endfor
       %classificação final do objeto i
       for s = 1:n
         if(m_dist(s) == min(m_dist))
          class(i) = s;
         endif
       endfor
   endfor

endfunction
