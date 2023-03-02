function [seeds] = new_position (m_pert, seeds, matrix, l, n)
  %Obtém os valores da nova posição dos centróides
  c = size(matrix, 2);
  for j = 1:n
    coord = zeros(1, c);
    indiv = 0;

    for i = 1:l
      if(m_pert(i, j))
        for aux = 1:c
          coord(1, aux) += matrix(i, aux);
        endfor
        indiv++;
      endif
    endfor
    if(indiv == 0)
      disp('Sem indivíduos')
    else
      for aux = 1:c
        seeds(j, aux) = coord(1, aux)/indiv;
      endfor
    endif

  endfor
endfunction
