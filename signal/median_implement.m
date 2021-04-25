img=load('testimage.mat');
img_noisy=im2double(img.noisy);
img_orginal=im2double(img.original);


for i=1:240
  img.out(i,1)=median(img_noisy(i,1:2));
  img.out(i,320)=median(img_noisy(i,319:320));
  for j=2:319
     
      img.out(i,j-1:j+1)=median(img_noisy(i,j-1:j+1));

  end
 end
figure,imshow(img.out);
