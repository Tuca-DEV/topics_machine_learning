function kmeans(n, matrix)
  [l,c] = size(matrix);
  seeds = rand(n,c); %Geração das sementes
  class = zeros(1, l); %Vetor que armazena a classificação de cada objeto i

  for c = 1:10
     m_pert = zeros(l,n); %Matriz de pertinências resetada

     %Cálculo das distâncias entre os indivíduos dos centróides e classificação final
     class = dist_class(matrix, seeds, l, n);

     %Atualização da matriz de pertinências
     for i = 1:l
       m_pert(i, class(i)) = 1;
     endfor

     %Cálculo da nova posição dos centróides
     seeds = new_position(m_pert, seeds, matrix, l , n);
     seeds

  endfor

  figure(1);
  plot(seeds(:,1), seeds(:,2),'ro');
  axis([0 1 0 1]); drawnow;
  hold on;
  plot(matrix(:,1),matrix(:,2), 'b*');
  drawnow; hold on;
endfunction
