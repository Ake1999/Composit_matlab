function [si1f,si1s]=Tsai_Wu(Si2,ta12)
    Xt=1.52e9; Xc=1.7e9;
    Yt=43.8e6; Yc=43.8e6;
    R=67.6e6; S=86.9e6;
    F1=1/Xt-1/Xc; F11=1/(Xt*Xc);
    F2=1/Yt-1/Yc; F22=1/(Yt*Yc);
    F66=1/S^2; F12=0;
    syms Si1f Si1s
    eq1= F1*Si1f + F2*Si2 + F11*Si1f^2 + F22*Si2^2 + F66*ta12^2 ...
         + 2*F12*Si1f*Si2-1==0;
    eq2= F1*Si1s + F2*Si2 + F11*Si1s^2 + F22*Si2^2 + F66*ta12^2 ...
         + 2*F12*Si1s*Si2-1==0;
    Ans1=double(solve(eq1,Si1f));
    Ans2=double(solve(eq2,Si1s));
    si1f=Ans1(2);si1s=Ans2(2);
end
