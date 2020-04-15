function [SR,flag,cause]=mStrain(compKind,normalStress)
  %Max Normal Strain Theory
  [Xt,Xc,Yt,Yc,s]=Get(compKind);
  normalStrain=S(compKind)*normalStress;
  flag=false;
  SXt=S(compKind)*[Xt;0;0];SXt=SXt(1);
  SXc=S(compKind)*[Xc;0;0];SXc=SXc(1);
  SYt=S(compKind)*[0;Yt;0];SYt=SYt(2);
  SYc=S(compKind)*[0;Yc;0];SYc=SYc(2);
  Ss=S(compKind)*[0;0;s];Ss=Ss(3);
  cause="";
  SRMat=[SXt/normalStrain(1),SXc/normalStrain(1),...
    SYt/normalStrain(2),SYc/normalStrain(2),...
    abs(Ss/normalStrain(3))];
  SRMat=(abs(SRMat)+SRMat)/2;
  SR=min(SRMat(SRMat>0));
  c=find(SRMat==SR);
  if SR<1
      switch c
           case 1           
               flag=true;
               cause="SXt";
           case 2
               flag=true;
               cause="SXc";
           case 3
               flag=true;
               cause="SYt";
           case 4
               flag=true;
               cause="SYc";
           case 5
               flag=true;
               cause="Ss";
      end
    end
end
