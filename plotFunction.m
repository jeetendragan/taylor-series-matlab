function plotFunction(f, range, col, lineWidth, style)
  % Create a range of values between min and max
  input = range(1): 0.1: range(2);
  
  result = f(input);
  
  plot(input, result, 'linewidth', lineWidth, style);
  %legend(fString);
end
  
  