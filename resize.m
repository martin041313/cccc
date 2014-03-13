I=imread('lena.jpg');
I1 = imresize(I, 0.1, 'nearest');
I2 = imresize(I, 0.1, 'bilinear');
I3 = imresize(I, 0.1, 'bicubic');
  figure(1);
  subplot(2,2,1),imshow(I),title('source'); 
  subplot(2,2,2),imshow(I1,[]),title('nearest');  
  subplot(2,2,3),imshow(I2,[]),title('bilinear'); 
  subplot(2,2,4),imshow(I3,[]),title('bicubic');