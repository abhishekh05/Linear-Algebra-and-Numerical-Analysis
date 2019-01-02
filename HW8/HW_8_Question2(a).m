ar=[1,2,10,30,45,90,130]
%[Q]=imagecompb(ar'UB.png','comp_UB.png')
[R]=imagecompb(ar,'futurama.png','compressfuturama.png')
%[Z]=imagecompb(ar,'square.png','comp_square.png')

%The minimum p-values needed to re-create the UB.png image is 45.
%The 45 p-value gives us an clear image.


%The minimum value p- value need ed to re-create the futurama.png image is
%90, at the 90 p-value we are getting a clear image.

%(Square image )The minimum p-values needed to re-create a good image is 2
%we do not get a clear image when we pass 1 p-value 
                                                        
%We get a clear image for lower ranks as the lower ranks are able to
%re-produce a similar matrix as the original image matrix.
