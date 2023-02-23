function [m_pert] = kmeans(n, matrix)
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
  for i = 1:size(m_pert, 1)
    [~, c] = max(m_pert(i, :));
    switch(c)
      case 1
        cor = 'b*';
        break;
      case 2
        cor = 'g*';
        break;
      case 3
        cor = 'y*';
        break;
      case 4
        cor = 'm*';
        break;
      otherwise
        disp('ERRO')
    endswitch
    plot(matrix(i,1),matrix(i,2), cor);
    drawnow; hold on;
  endfor

endfunction
