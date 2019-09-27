function TaylorPlot()
  narrowRange = [-2, 2];
  mediumRange = [-pi, pi];
  broadRange = [-2*pi, 2*pi];
  
  hold all;
  
  mainFunction = @(x)(sin(x) + cos(x).^2)
  plotFunction(mainFunction, broadRange, "green", 2, '--');
  legendText = {"sin(x)+cos(x)^2"};
  i = 1;
  
  fh1 = @(x)(1+x);
  plotFunction(fh1, mediumRange, "red", 2, '-');
  i++;
  legendText{i} = sprintf("1+x");

  fFinal = @(x)(1 + x + (-1/2) * x.^2 + (-1/6) * x.^3 + (1/3) * x.^4 + (1/120) * x.^5 + (2/45) * x.^6 + (1/5040) * x.^7 );
  plotFunction(fFinal, narrowRange, "", 2, '-');
  legendText{++i} = sprintf("Final");
  
  leg = legend(legendText);
  set(leg, 'color', 'none');
  legend boxoff;
  
end