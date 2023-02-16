function kmeans(n, matrix)
  [l,c] = size(matrix)
  seeds = rand(n,c);%create_seed(n);
  m_pert = zeros(l,n)

  for i=1:10

     %Cálculo das distâncias entre os indivíduos e os centróides
     m_dist = DISTEUCLIDIANA(seeds(i,:), matrix(j,:))
     %Atualização da matriz de pertinências

     %Cálculo da nova posição dos centróides

  endfor

endfunction
