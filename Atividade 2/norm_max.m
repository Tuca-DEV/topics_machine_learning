function [matriz_normalizada] = norm_max()

    matriz = load('dados.m')

    maximo_sal = max(matriz(:,3))
    maxima_idade = max(matriz(:, 2))

    % Normalização do salário
    for i = 1:19
      matriz(i, 3) = matriz(i,3)/maximo_sal
    endfor
    % Normalização da idade
    for i = 1:19
      matriz(i, 2) = matriz(i,2)/maxima_idade
    endfor

    matriz_normalizada = matriz

endfunction
