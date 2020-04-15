j=0;
s=1801;
Ex=zeros(1,s);
Ey=zeros(1,s);
Vxy=zeros(1,s);
Gxy=zeros(1,s);
for i=linspace(-90,90,s)
    j=j+1;
    teta=i*pi/180;
    Ex(j)=1/Sb(1,1,teta);
    Ey(j)=1/Sb(2,2,teta);
    Vxy(j)=-Ex(j)*Sb(2,1,teta);
    Gxy(j)=1/Sb(6,6,teta);    
end
i=linspace(-90,90,s);
subplot(2,2,1)
plot(i,Ex)
title('Ex')
hold on
plotmaxmincrv(i,Ex);

subplot(2,2,2)
plot(i,Ey)
title('Ey')
hold on
plotmaxmincrv(i,Ey);

subplot(2,2,3)
plot(i,Vxy)
title('Vxy')
hold on
plotmaxmincrv(i,Vxy);

subplot(2,2,4)
plot(i,Gxy)
title('Gxy')
hold on
plotmaxmincrv(i,Gxy);
