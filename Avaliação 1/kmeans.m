function kmeans(n, matrix)
  [l,c] = size(matrix);
  seeds = rand(n,c); %Geração das sementes
  m_pert = zeros(l,n); %Matriz de pertinências
  class = zeros(1, l); %Vetor que armazena a classificação de cada objeto i

  for c = 1:1

     %Cálculo das distâncias entre os indivíduos e os centróides
     class = dist_class(matrix, seeds, l, n);
     %Atualização da matriz de pertinências

     %Cálculo da nova posição dos centróides

  endfor

endfunction
