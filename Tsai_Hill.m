function [si1f,si1s]=Tsai_Hill(si2,ta12)
    Xt=1.52e9; Xc=1.7e9;
    Yt=43.8e6; Yc=43.8e6;
    R=67.6e6; S=86.9e6;
    Y=0;
    if(0<si2<Yt)
        Y=Yt;
    elseif(-Yc<si2<0)
        Y=Yc;
    end
    syms Si1f Si1s
    eq1=(Si1f/Xt)^2+(si2/Y)^2+(ta12/S)^2-(Si1f*si2/Xt^2)-1==0;
    eq2=(Si1s/Xc)^2+(si2/Y)^2+(ta12/S)^2-(Si1s*si2/Xc^2)-1==0;
    Ans1=double(solve(eq1,Si1f));
    Ans2=double(solve(eq2,Si1s));
    si1f=Ans1(2);si1s=Ans2(2);
end
