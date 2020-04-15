function [Ex,Ey,Vxy,Gxy]=EngConstant(s)
  Ex=1/s(1,1);
  Ey=1/s(2,2);
  Vxy=-Ex*s(1,2);
  Gxy=1/s(3,3);
end
