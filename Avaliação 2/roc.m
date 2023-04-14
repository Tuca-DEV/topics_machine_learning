function roc(TPRs, FPRs)
  figure(1)
  plot(FPRs(1), TPRs(1), 'g*');
  drawnow; hold on;
  plot(FPRs(2), TPRs(2), 'b*');
  drawnow; hold on;
  plot(FPRs(3), TPRs(3), 'r*');
  drawnow; hold on;
  axis([0,1,0,1])

endfunction
