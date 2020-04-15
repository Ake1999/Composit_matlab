function val=A(input)
  s=size(input,2);
  val=zeros(3,3);
  %angle;kind;tickness; 
  for i=1:s
    val=val+Qb(input{2,i},input{1,i})*input{3,i};
  end
end
