img=load('testimage.mat');
img_noisy=im2double(image1);
img_orginal=im2double(image2);
for i=1:240
  img.out(i,:)=medfilt1(img_noisy(i,:),3);
 end
figure,imshow(img.out);
