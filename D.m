function val=D(input)
  s=size(input,2);
  val=zeros(3,3);
  T=0;ti=0;
  for j=1:s
    T=T+input{3,j};
  end

  for i=1:s
    try
        ti=ti+input{3,i-1};
    catch
        ti=0;
    end
    Z1=-T/2+ti;
    Z2=Z1+input{3,i};
    Z=(Z2^3-Z1^3);
    val=val+Qb(input{2,i},input{1,i})*Z;
  end
  val=val/3;
end
