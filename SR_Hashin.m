function [SR,flag,cause]=SR_Hashin(compKind,normalStress)
    [Xt,Xc,Yt,Yc,s]=Get(compKind);
    flag=false;
    cause="";
    if(0<normalStress(1))
        X=Xt;
        strX="Xt";
    elseif(normalStress(1)<0)
        X=Xc;
        strX="Xc";
    end
    if(0<normalStress(2))
        Y=Yt;
        strY="Yt";
    elseif(normalStress(2)<0)
        Y=Yc;
        strY="Yc";
    end
    SRMat=[1/((normalStress(1)/X)^2 +(normalStress(3)/s)^2),...
        1/((normalStress(2)/Y)^2 +(normalStress(3)/s)^2)];
    SR=min(SRMat);
    c=find(SRMat==SR);
    if SR<1
        switch c
               case 1           
                   flag=true;
                   cause=strX;
               case 2
                   flag=true;
                   cause=strY;
        end
    end
end
