function main()
  base = norm_linear('heart.dat')

  % 10% da base será para testes, sendo 5% da classe 0 e 5% da classe 1. Estes 10% serão os últimos 27 dados
  % no caso da base heart.dat
  % O restante(90% ou 243 indivíduos) serão para treinamento do knn

  rotulos =  base(:, end);
  treinamento = base(1:length(base)*0.9, 1:end-1);
  teste = base(length(base)+1 - length(base)*0.1:end, 1:end-1);
  TPRs = zeros(1, 3);
  FPRs = zeros(1, 3);

  %k=1
  classificados1 = knn(1, treinamento, rotulos, teste)
  m1 = m_confusao(classificados1, rotulos)
  indice = indices(m1);
  printf("\nTPR = %d\nFPR = %d\nACC = %d porcento\n\n\n", indice(1), indice(2), indice(3)*100)
  TPRs(1) = indice(1);
  FPRs(1) = indice(2);

  %k=3
  classificados3 = knn(3, treinamento, rotulos, teste)
  m3 = m_confusao(classificados3, rotulos)
  indice = indices(m3);
  printf("\nTPR = %d\nFPR = %d\nACC = %d porcento\n\n\n", indice(1), indice(2), indice(3)*100)
  TPRs(2) = indice(1);
  FPRs(2) = indice(2);

  %k=5
  classificados5 = knn(5, treinamento, rotulos, teste)
  m5 = m_confusao(classificados5, rotulos)
  indice = indices(m5);
  printf("\nTPR = %d\nFPR = %d\nACC = %d porcento\n\n\n", indice(1), indice(2), indice(3)*100)
  TPRs(3) = indice(1);
  FPRs(3) = indice(2);

  roc(TPRs, FPRs);
endfunction

