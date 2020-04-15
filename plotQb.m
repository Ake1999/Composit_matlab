s=1801;
j=0;
Qb11=zeros(1,s);
Qb12=zeros(1,s);
Qb16=zeros(1,s);
Qb21=zeros(1,s);
Qb22=zeros(1,s);
Qb26=zeros(1,s);
Qb61=zeros(1,s);
Qb62=zeros(1,s);
Qb66=zeros(1,s);
for i=linspace(-90,90,s)
    j=j+1;
    teta=i*pi/180;
    qb=Qb(teta);
    Qb11(j)=qb(1,1);
    Qb12(j)=qb(1,2);
    Qb16(j)=qb(1,3);
    Qb21(j)=qb(2,1);
    Qb22(j)=qb(2,2);
    Qb26(j)=qb(2,3);
    Qb61(j)=qb(3,1);
    Qb62(j)=qb(3,2);
    Qb66(j)=qb(3,3);
end
i=linspace(-90,90,s);
subplot(3,3,1)
plot(i,Qb11)
title('Qb11')
hold on
plotmaxmincrv(i,Qb11);

subplot(3,3,2)
plot(i,Qb12)
title('Qb12')
hold on
plotmaxmincrv(i,Qb12);

subplot(3,3,3)
plot(i,Qb16)
title('Qb16')
hold on
plotmaxmincrv(i,Qb16);

subplot(3,3,4)
plot(i,Qb21)
title('Qb21')
hold on
plotmaxmincrv(i,Qb21);

subplot(3,3,5)
plot(i,Qb22)
title('Qb22')
hold on
plotmaxmincrv(i,Qb22);

subplot(3,3,6)
plot(i,Qb26)
title('Qb26')
hold on
plotmaxmincrv(i,Qb26);

subplot(3,3,7)
plot(i,Qb61)
title('Qb61')
hold on
plotmaxmincrv(i,Qb61);

subplot(3,3,8)
plot(i,Qb62)
title('Qb62')
hold on
plotmaxmincrv(i,Qb62);

subplot(3,3,9)
plot(i,Qb66)
title('Qb66')
hold on
plotmaxmincrv(i,Qb66);
