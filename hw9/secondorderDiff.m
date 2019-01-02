  function second_DF = secondorderDiff(y, h)
    second_DF = zeros(1,length(y));
    for i = 2:length(y)-1
        second_DF(1) = (y(length(y) -1) - 2*y(1) + y(2))/(h*h);
        second_DF(i) = (y(i+1) - 2*y(i) + y(i-1))/(h*h);
    end
    second_DF(length(y)) = (y(length(y) -1) - 2*y(length(y)) + y(2))/(h*h);
  end