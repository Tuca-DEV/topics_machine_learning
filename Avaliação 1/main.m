function main()
  caminho = 'ruspini.m'

  matrizNormalizada = norm_linear(caminho);

  kmeans(4, matrizNormalizada)

endfunction
