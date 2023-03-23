function knn(k, base, rotulos, obj_ent)
  %k: número de classes e número de objetos mais próximos do objeto de entrada que o definirão

  for n_obj = 1:length(obj_ent)
    distancias = zeros(length(rotulos), 1);
    %Cálculo das distâncias de todos os objetos da base do novo objeto
    for i = 1:length(base)
      distancias(i) = DISTEUCLIDIANA(base(i,:), obj_ent(n_obj,:));
    endfor
    %Organizando as distânciais de forma crescente e pegando o índice delas no vetor ids
    [~,ids] = sort(distancias);
    %Classificando
    classificados(1,n_obj) = mode(rotulos(ids(1:k)));

    base(end+1,:) = obj_ent(n_obj,:);
    rotulos(end+1) = classificados(1, n_obj);
  endfor

classificados
%Plotagem
figure(1)
  for i = 1:length(rotulos)
    if(rotulos(i) == 1)
      plot(base(i, 1), base(i, 2), 'ro');
      drawnow; hold on;
    else
      plot(base(i, 1), base(i, 2), 'bo');
      drawnow; hold on;
    endif
  endfor

endfunction
