function [m] = m_confusao (classificados, rotulos)
  %Pegando os rótulos somente dos 10% dos dados separados pra teste
  ini = length(rotulos)+1-length(classificados);
  rot_teste = rotulos(ini:end);
  %Variáveis inicializadas
  TP = 0;
  TN = 0;
  FP = 0;
  FN = 0;

  for i=1:length(classificados)
    if(classificados(i) == 1)
      if(classificados(i) == rot_teste(i))
        TP++;
      else
        FP++;
      endif
    else
      if(classificados(i) == 0)
        TN++;
      else
        FN++;
      endif
    endif
  endfor

  m = [TP, FN; FP, TN];

endfunction
