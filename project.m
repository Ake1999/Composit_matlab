F=225e3;T=730;p=10^7;
r=25e-3;
Rave=r+5*0.125e-3;
Nx=(F/(2*pi*Rave))+((p*r)/2);
Ny=(p*r);
Nxy=T/(2*pi*Rave^2);
stress=[Nx;Ny;Nxy];
comp={pi/9,-pi/9,0,0,0,0,0,0,-pi/9,pi/9;...
      "graphite/epoxy","graphite/epoxy","graphite/epoxy","graphite/epoxy"...
      "graphite/epoxy","graphite/epoxy","graphite/epoxy","graphite/epoxy"...
      "graphite/epoxy","graphite/epoxy";0.15e-3,0.15e-3,0.15e-3,0.15e-3,...
      0.15e-3,0.15e-3,0.15e-3,0.15e-3,0.15e-3,0.15e-3};
[oaStress,oaStrain]=LOS(comp,stress);
disp('on axis stress in the 20 deg layer: ')
disp(oaStress{1})
disp('on axis stress in the -20 deg layer: ')
disp(oaStress{2})
disp('on axis stress in the 0 deg layer: ')
disp(oaStress{3})
disp('on axis strain: ')
disp(oaStrain)
%% Maximum stress
SRMat=[mStress("graphite/epoxy",oaStress{1}), ...
    mStress("graphite/epoxy",oaStress{2}),mStress("graphite/epoxy",oaStress{3})];
SR=min(SRMat);
c=find(SRMat==SR);
disp('In Max Stress failure: ')
if SR<1
    switch c
           case 1
               disp('    the 20 deg layer failed at first.')
           case 2
               disp('    the -20 deg layer failed at first.')
           case 3
               disp('    the 0 deg layer failed at first.')
    end
else
    disp('    non of the layers failed.')
    switch c
           case 1
               disp('    but the 20 deg layer failed at first.')
           case 2
               disp('    but the -20 deg layer failed at first.')
           case 3
               disp('    but the 0 deg layer failed at first.')
    end
end
%% Maximum Strain
SRMat=[mStrain("graphite/epoxy",oaStress{1}), ...
    mStrain("graphite/epoxy",oaStress{2}),mStrain("graphite/epoxy",oaStress{3})];
SR=min(SRMat);
c=find(SRMat==SR);
disp('In Max Strain failure: ')
if SR<1
    switch c
           case 1
               disp('    the 20 deg layer failed at first.')
           case 2
               disp('    the -20 deg layer failed at first.')
           case 3
               disp('    the 0 deg layer failed at first.')
    end
else
    disp('    non of the layers failed.')
    switch c
           case 1
               disp('    but the 20 deg layer failed at first.')
           case 2
               disp('    but the -20 deg layer failed at first.')
           case 3
               disp('    but the 0 deg layer failed at first.')
    end
end
%% Tsai_Hill failure
SRMat=[SR_Tsai_Hill("graphite/epoxy",oaStress{1}), ...
    SR_Tsai_Hill("graphite/epoxy",oaStress{2}),SR_Tsai_Hill("graphite/epoxy",oaStress{3})];
SR=min(SRMat);
c=find(SRMat==SR);
disp('In Tsai_Hill failure: ')
if SR<1
    switch c
           case 1
               disp('    the 20 deg layer failed at first.')
           case 2
               disp('    the -20 deg layer failed at first.')
           case 3
               disp('    the 0 deg layer failed at first.')
    end
else
    disp('    non of the layers failed.')
    switch c
           case 1
               disp('    but the 20 deg layer failed at first.')
           case 2
               disp('    but the -20 deg layer failed at first.')
           case 3
               disp('    but the 0 deg layer failed at first.')
    end
end
%% Tsai_Wu failure
SRMat=[SR_Tsai_Wu("graphite/epoxy",oaStress{1}), ...
    SR_Tsai_Wu("graphite/epoxy",oaStress{2}),SR_Tsai_Wu("graphite/epoxy",oaStress{3})];
SR=min(SRMat);
c=find(SRMat==SR);
disp('In Tsai_Wu failure: ')
if SR<1
    switch c
           case 1
               disp('    the 20 deg layer failed at first.')
           case 2
               disp('    the -20 deg layer failed at first.')
           case 3
               disp('    the 0 deg layer failed at first.')
    end
else
    disp('    non of the layers failed.')
    switch c
           case 1
               disp('    but the 20 deg layer failed at first.')
           case 2
               disp('    but the -20 deg layer failed at first.')
           case 3
               disp('    but the 0 deg layer failed at first.')
    end
end
%% Hashin failure
SRMat=[SR_Hashin("graphite/epoxy",oaStress{1}), ...
    SR_Hashin("graphite/epoxy",oaStress{2}),SR_Hashin("graphite/epoxy",oaStress{3})];
SR=min(SRMat);
c=find(SRMat==SR);
disp('In Hashin failure: ')
if SR<1
    switch c
           case 1
               disp('    the 20 deg layer failed at first.')
               [~,~,cause]=SR_Hashin("graphite/epoxy",oaStress{1});
               disp('    It failed becuse of ' + cause)
           case 2
               disp('    the -20 deg layer failed at first.')
               [~,~,cause]=SR_Hashin("graphite/epoxy",oaStress{2});
               disp('    It failed becuse of ' + cause)
           case 3
               disp('    the 0 deg layer failed at first.')
               [~,~,cause]=SR_Hashin("graphite/epoxy",oaStress{3});
               disp('    It failed becuse of ' + cause)
    end
else
    disp('    non of the layers failed.')
    switch c
           case 1
               disp('    but the 20 deg layer failed at first.')
           case 2
               disp('    but the -20 deg layer failed at first.')
           case 3
               disp('    but the 0 deg layer failed at first.')
    end
end
%% D
syms T p
F=0;
r=25e-3;
Rave=r+5*0.125e-3;
Nx=(F/(2*pi*Rave))+((p*r)/2);
Ny=(p*r);
Nxy=T/(2*pi*Rave^2);
stress=[Nx;Ny;Nxy];
[oaStress,oaStrain]=LOS(comp,stress);
[Xt,Xc,Yt,Yc,s]=Get("graphite/epoxy");
F1=1/Xt+1/Xc; F11=-1/(Xt*Xc);
F2=1/Yt+1/Yc; F22=-1/(Yt*Yc);
F66=1/s^2; F12=-1/2*(sqrt(F11*F22));

for i=[1,2,3]
    normalStress=oaStress{i};
    eq= F1*normalStress(1) + F2*normalStress(2) + F11*normalStress(1)^2 ...
        + F22*normalStress(2)^2 + F66*normalStress(3)^2 ...
         + 2*F12*normalStress(1)*normalStress(2);
     if i==1
         color='r';
     elseif i==2
         color='g';
     elseif i==3
         color='b';
     end
     ez=ezplot(eq==1,[-0.3e4,0.3e4,-0.3e8,0.3e8]);
     set(ez,'color',color)
     title("Tsai Wu")
     hold on
end
legend ("20","-20","0")
