function [d] = DISTEUCLIDIANA(centroide, objeto)

d = sqrt(sum((centroide - objeto).^2));

% if(d>1 && d<inf)
%     disp(sprintf('dist_euclidiana > 0'));
%     d= norma(d);
%     pause;
% end
