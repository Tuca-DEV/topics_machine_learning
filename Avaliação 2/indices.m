function [indice] = indices(mat_conf)
  TP = mat_conf(1,1);
  TN = mat_conf(2,2);
  FP = mat_conf(2,1);
  FN = mat_conf(1,2);

  TPR = TP/(TP+FN);
  FPR = FP/(FP+TN);
  ACC = (TP+TN)/(TP+FN+FP+TN);
  E = 1-ACC;
  P = TP/(FP+TP);

  indice = [TPR, FPR, ACC, E, P];
endfunction
