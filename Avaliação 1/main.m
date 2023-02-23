function main()

  %inicialização
  k = 4;
  purezas = zeros(1, 10);

  %diretórios da base de dados e dos rótulos
  caminho_base = 'ruspini.m'
  caminho_rotulo = 'rotulosRuspini.m'

  %Normalização/Pré-processamento
  matrizNormalizada = norm_linear(caminho_base);

  %10 execuções do K-means e do cálculo da pureza global
  %Mudar i de 10 para 1 execuções caso necessite visualizar a plotagem
  for i = 1:10
    m_pert = kmeans(k, matrizNormalizada);
    purezas(i) = pureza(m_pert, caminho_rotulo, k);
    purezas(i)*100
  endfor


endfunction
