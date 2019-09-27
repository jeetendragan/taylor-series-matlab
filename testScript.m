function testScript() 
  H = rand(5, 20);
  [rows, columns] = size(H);
  t = 1 : columns;
  % subplot(2,2,1)
  plot(t,H(1,:)) 
  grid on;
  xlabel('t [s]')
  ylabel('H [m]')
  legendText = {'Plot #1'};
  for k = 2 : rows
    % holds old plot for multi-line plots
    hold all
    plot(t,H(k,:));
    legendText{k} = sprintf('Plot #%d', k);
    legend(legendText);
    % drawnow; % Force screen refresh.
end