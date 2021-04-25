img=load('testimage.mat');
img_noisy=im2double(img.noisy);
img_orginal=im2double(img.original);
  M=0
  M2=30
  for i=1:240
    for j=1:M2-1
        img_out(i,1:j+M1-1)=sum(img_noisy(i,1:j+M1-1))/(M2+M1+1);
    end
    for j=320-M1+1:320
      img_out(i,j-M2+1:320)=sum(img_noisy(i,j-M2+1:320))/(M2+M1+1);
    end
    for j=M2+1:320-M1
       
        img_out(i,j-M2:j+M1)=sum(img_noisy(i,j-M2:j+M1))/(M2+M1+1);

    end
   end
  figure,imshow(img_out);