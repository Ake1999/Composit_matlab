function HillPlot(ta12)
  Yt=43.8e6; Yc=43.8e6;
  Y=-Yc+3e5:1e6:Yt-3e5;
  Xp=zeros(1,size(Y,2));
  Xn=zeros(1,size(Y,2));
  for i=1:size(Y,2)
    [Xp0,Xn0]=Tsai_Hill(Y(i),ta12);
    Xp(i)=Xp0; Xn(i)=-Xn0;
  end
  X=[Xp,flip(Xn),Xp(1)];
  Y=[Y,flip(Y),Y(1)];
  plot(X,Y);
end
