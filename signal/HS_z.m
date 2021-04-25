X=zeros(1,100);
X(1,50)=1;
M1=0
M2=5
for j=1:M2-1
        H(1,1:j+M1-1)=sum(X(1,1:j+M1-1))/(M2+M1+1);
    end
    for j=100-M1+1:100
      H(1,j-M2+1:100)=sum(X(1,j-M2+1:100))/(M2+M1+1);
    end
    for j=M2+1:100-M1
        H(1,j-M2:j+M1)=sum(X(1,j-M2:j+M1))/(M2+M1+1);

end
Y=uint8(1:100);
figure,
plot(Y,H);

XS=zeros(1,100);
XS(1,(51:100))=ones(1,50);

for j=1:M2-1
        HS(1,1:j+M1-1)=sum(XS(1,1:j+M1-1))/(M2+M1+1);
    end
    for j=100-M1+1:100
      HS(1,j-M2+1:100)=sum(XS(1,j-M2+1:100))/(M2+M1+1);
    end
    for j=M2+1:100-M1
        HS(1,j-M2:j+M1)=sum(XS(1,j-M2:j+M1))/(M2+M1+1);

    end
figure,
hf=figure()
stem(Y,HS);
view(0,90)
ylim([0,2]);
xlim([1,100]);
saveas(hf,'HS_z.pdf');
