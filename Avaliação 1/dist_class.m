
function [class] = dist_class (matrix, seeds, l, n)

  for i = 1:l
       m_dist = inf(1, n);

       for s = 1:n
        m_dist(s) = DISTEUCLIDIANA(seeds(s,:), matrix(i,:))
       endfor

       for s = 1:n
         if(m_dist(s) == min(m_dist))
          class(i) = s
         endif
       endfor
   endfor

endfunction
