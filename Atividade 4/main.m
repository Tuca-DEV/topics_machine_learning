function main()
  base = load('Arquivos/sintetica.m')
  objetos = load('Arquivos/objetos.m')
  rotulos = load('Arquivos/rotulos.m')

  knn(1, base, rotulos, objetos);

  %Código para plotar os pontos


endfunction
