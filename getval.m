function [E1,E2,G12,V12,V21]=getval(material)
  if(nargin==0 || "t300/5208" == material || ""==material)
    E1=181e9; E2=10.3e9; G12=7.17e9; V12=0.28;
  elseif("scathply1002"== material)
    E1=38.6e9; E2=8.27e9; G12=4.14e9; V12=0.26;
  elseif("kolar49/epoxy"== material)
    E1=76e9; E2=5.5e9; G12=2.3e9; V12=0.54;
  elseif("graphite/epoxy"== material)
    E1=155e9; E2=12.1e9; G12=4.4e9; V12=0.248;
  end
  V21=(E2/E1)*V12;
end
