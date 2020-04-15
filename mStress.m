function [SR,flag,cause]=mStress(compKind,normalStress)
    %Max Normal Stress Theory
    [Xt,Xc,Yt,Yc,s]=Get(compKind);
    flag=false;
    cause="";
    SRMat=[Xt/normalStress(1),Xc/normalStress(1),...
        Yt/normalStress(2),Yc/normalStress(2),...
        abs(s/normalStress(3))];
    SRMat=(abs(SRMat)+SRMat)/2;
    SR=min(SRMat(SRMat>0));
    c=find(SRMat==SR);
    if SR<1
        switch c
               case 1           
                   flag=true;
                   cause="Xt";
               case 2
                   flag=true;
                   cause="Xc";
               case 3
                   flag=true;
                   cause="Yt";
               case 4
                   flag=true;
                   cause="Yc";
               case 5
                   flag=true;
                   cause="S";
        end
    end
end
