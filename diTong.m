  I=imread('edge.png');
  I=rgb2gray(I);
  figure(1),imshow(I);
  title('source');
  s=fftshift(fft2(I));
  r = real(s);
  i = imag(s);
  margin = log(abs(s));
  phase = log(angle(s)*180/pi);
  l = log(s);
  
  figure(2);
  subplot(2,2,1),imshow(I),title('Ô´Í¼Ïñ'); 
  subplot(2,2,2),imshow(l,[]),title('Í¼ÏñÆµÆ×');  
  subplot(2,2,3),imshow(margin,[]),title('Í¼Ïñ·ù¶ÈÆ×'); 
  subplot(2,2,4),imshow(phase,[]),title('Í¼ÏñÏàÎ»Æ×');
  
  
  
  
  
  [a,b]=size(s);
  a0=round(a/2);
  b0=round(b/2);
  d=10;
  for i=1:a     
    for j=1:b          
	  distance=sqrt((i-a0)^2+(j-b0)^2);
      if distance<=d 
	    h=1;
      else 
	    h=0;
      end;
      s(i,j)=h*s(i,j);
      end;
  end;
  s=uint8(real(ifft2(ifftshift(s))));
  figure(3);
  imshow(s);
  title('dest');
