function [output,strain]=LOS(lam,stress)
  %laminateOnAxisStress
  s=size(lam,2);
  output=cell(1,s);
  strain=Ak(lam)*stress;
  for i=1:s
    output{i}=Q(lam{2,i})*Tep(lam{1,i})*strain;
  end
end
