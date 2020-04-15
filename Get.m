function [Xt,Xc,Yt,Yc,S]=Get(material)
  if(nargin==0 || "t300/5208" == material || ""==material)
    Xt=1500e6; Xc=-1250e6; Yt=50e6; Yc=-200e6; S=100e6;
  elseif("graphite/epoxy"== material)
    Xt=1500e6; Xc=-1250e6; Yt=50e6; Yc=-200e6; S=100e6;
  end
end
