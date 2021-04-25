test=1:10
X=zeros(1,100);
X(1,50)=1;
for i=2:99
  H(1,i-1:i+1)=median(X(1,i-1:i+1));
end
Y=uint8(1:100);
hf=figure();
plot(Y,H);
hf1=figure();
XS=zeros(1,100);
XS(1,(51:100))=ones(1,50);
for i=2:99
  HS(1,i-1:i+1)=median(XS(1,i-1:i+1));
end
HS
hf=figure();
stem(Y,HS);
view(0,90)
ylim([0,2]);
xlim([1,100]);
saveas(hf,'stem.pdf');





