function plotEstimate(f1, f2, range1, range2)
  % f1 - this is the function that has to be estimated
  % f2 - the function that estimates f2
  % range1 - the range of values to be passed in to f1, it is a 1*2 vector
  % range2 - the range of values to be passed in to f2, it is also a 1*2 vector
  
  % tesselate the values in the range1
  range1Terms = range1(1):0.1:range1(2);
  
  % pass the range1Terms to f1 and get the output
  f1Output = f1(range1Terms);
  
  % plot the range1Terms with the output
  plot(range1Terms, f1Output, "linewidth", 3);
  
  %tesselate the values in the range2
  range2Terms = range2(1):0.1:range2(2);
  
  %pass the range2Terms to f2 and get the output
  f2Output = f2(range2Terms);
  
  % so that the second plot does not override the 1st one
  hold on
  
  %pplot the range2Terms with output
  plot(range2Terms, f2Output, "linewidth", 3); 
end