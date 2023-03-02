function [pureza_glob] = pureza(m_pert, caminho, k)
  rotulos = load(caminho);
  m_cont = zeros(k, k);
  pureza_loc = zeros(1, k);
  pureza_glob = 0;

  %Construção da matriz de contingências
  for i = 1:length(rotulos)
    [~, c] = max(m_pert(i, :));
    m_cont(c, rotulos(i))++ ;
  endfor

  for i = 1:k
    pureza_loc(i) = max(m_cont(i, :))/ sum(m_cont(i, :));
    pureza_glob += pureza_loc(i)*sum(m_cont(i, :))/length(rotulos);
  endfor

endfunction
