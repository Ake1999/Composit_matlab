function [SR,flag]=SR_Tsai_Hill(compKind,normalStress)
    flag=false;
    [Xt,Xc,Yt,Yc,s]=Get(compKind);
    if(0<normalStress(1))
        X=Xt;
    elseif(normalStress(1)<0)
        X=Xc;
    end
    if(0<normalStress(2))
        Y=Yt;
    elseif(normalStress(2)<0)
        Y=Yc;
    end
    SR=1/((normalStress(1)/X)^2 +(normalStress(2)/Y)^2+ ...
        (normalStress(3)/s)^2 -(normalStress(1)*normalStress(2)/X^2));
    if (SR<1)
        flag=true;
    end
end
