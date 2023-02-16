function [matriz_normalizada] = norm_linear(caminho)

    matriz = load(caminho)

    [l, c] = size(matriz);

    for j = 1:c
      minimo = min(matriz(:, j));
      maximo = max(matriz(:, j));
      for i = 1:l
        matriz_normalizada(i, j) = (matriz(i, j) - minimo)/(maximo - minimo);
      endfor
    endfor

endfunction
