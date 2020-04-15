function [SR,flag]=SR_Tsai_Wu(compKind,normalStress)
    flag=false;
    [Xt,Xc,Yt,Yc,s]=Get(compKind);
    F1=1/Xt+1/Xc; F11=-1/(Xt*Xc);
    F2=1/Yt+1/Yc; F22=-1/(Yt*Yc);
    F66=1/s^2; F12=-1/2*(sqrt(F11*F22));
    SR= 1/(F1*normalStress(1) + F2*normalStress(2) + F11*normalStress(1)^2 ...
        + F22*normalStress(2)^2 + F66*normalStress(3)^2 ...
         + 2*F12*normalStress(1)*normalStress(2));
    if (SR<1)
        flag=true;
    end
end
