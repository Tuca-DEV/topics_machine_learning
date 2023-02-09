function [seed] = create_seed(k)
  for i = 1:k
    for j = 1:2
    seed(i, j) = rand();
    endfor
  endfor
endfunction
