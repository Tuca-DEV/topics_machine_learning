function [seeds] = new_position (m_pert, seeds, matrix, l , n)
  %Obtém os valores de x e y da nova posição dos centróides
  for j = 1:n
    x = 0;
    y = 0;
    indiv = 0;

    for i = 1:l
      if(m_pert(i, j))
         x += matrix(i, 1);
         y += matrix(i, 2);
         indiv++;
      endif
    endfor
    seeds(j, 1) = x/indiv;
    seeds(j, 2) = y/indiv;
  endfor
endfunction
