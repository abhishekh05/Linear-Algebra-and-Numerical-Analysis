  function fourth_Diff = fourthorderDiff(B, h)
    fourth_Diff = secondorderDiff(B, h);
   fourth_Diff = fourth_Diff*((h*h)/12);
    fourth_Diff = (B - fourth_Diff);
  end