I=imread('lena.jpg');
I=double(I)/(256-1);
%colorTransform = makecform('srgb2lab');
%lab = applycform(rgbImage, colorTransform);
w     = 5;       % bilateral filter half-width
sigma = [3 0.1]; % bilateral filter standard deviations

I1=b2scale(I,w,sigma,200,200);


figure, imshow(I) , title('I');
figure, imshow(I1) , title('I1');
