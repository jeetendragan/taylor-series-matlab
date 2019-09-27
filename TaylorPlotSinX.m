function TaylorPlotSinX()
  narrowRange = [-2, 2];
  mediumRange = [-pi, pi];
  broadRange = [-2*pi, 2*pi];
  
  hold all;
  
  mainFunction = @(x)(sin(x))
  plotFunction(mainFunction, broadRange, "green", 2, '-');
  legendText = {"sin(x)"};
  i = 1;
  
  fh1 = @(x)(x);
  %plotFunction(fh1, mediumRange, "", 2, '--');
  %legendText{++i} = sprintf("x");
  
  fh2 = @(x)(x + (-1/factorial(3) * x.^3));
  plotFunction(fh2, mediumRange, "", 2, '--');
  legendText{++i} = sprintf("x - (1/3!)*x^3");
  
  %fhFinal = @(x)(x + ( (-1/factorial(3)) * x.^3) + ( (1/factorial(5)) * x.^5) + ( (-1/factorial(7)) * x.^7) + (1/factorial(9)*x.^9) );
  %plotFunction(fhFinal, narrowRange, "red");
  %i++;
  %legendText{i} = sprintf("1+x");
  %
  
  fh3 = @(x)(x + (-1/factorial(3) * x.^3) + (1/factorial(5)) * x.^5);
  plotFunction(fh3, mediumRange, "", 2, '--');
  legendText{++i} = sprintf("x - (1/3!) * x^3 + (1/5!) * x^5");
  
  fh4 = @(x)(x + (-1/factorial(3) * x.^3) + (1/factorial(7)) * x.^7);
  plotFunction(fh4, mediumRange, "", 2, '--');
  legendText{++i} = sprintf("x - (1/3!) * x^3 + (1/5!) * x^5 - (1/7!) * x^7");
  
  final = @(x)(x + (-1/factorial(3)) * x.^3 + (1/factorial(5)) * x.^5 + (-1/factorial(7)) * x.^7 + (1/factorial(9) * x.^9));
  plotFunction(final, broadRange, "", 2, '--');
  legendText{++i} = sprintf("x - (1/3!) * x^3 + (1/5!) * x^5 - (1/7!) * x^7 - (1/9!)*x^9");
  xlabel('x');
  
  leg = legend(legendText);
  set(leg, 'color', 'none');
  legend boxoff;
  
end