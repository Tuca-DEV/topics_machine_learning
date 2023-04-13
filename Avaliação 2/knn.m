function [classificados] = knn(k, treinamento, rotulos, teste)
  %k: número de classes e número de objetos mais próximos do objeto de entrada que o definirão

  for n_obj = 1:length(teste)
    distancias = zeros(length(rotulos), 1);
    %Cálculo das distâncias de todos os objetos da base do novo objeto
    for i = 1:length(treinamento)
      distancias(i) = DISTEUCLIDIANA(treinamento(i,:), teste(n_obj,:));
    endfor
    %Organizando as distânciais de forma crescente e pegando o índice delas no vetor ids
    [~,ids] = sort(distancias);
    %Classificando
    classificados(1,n_obj) = mode(rotulos(ids(1:k)));

    treinamento(end+1,:) = teste(n_obj,:);
    rotulos(end+1) = classificados(1, n_obj);
  endfor

endfunction
