function plotmaxmincrv(x,y)
    ma=max(y);
    mi=min(y);
    ia=find(y==ma);
    ii=find(y==mi);
    xa=x(ia);
    ya=ma*ones(size(ia));
    plot(xa,ya,'o')
    xi=x(ii);
    yi=mi*ones(size(ii));
    hold on
    plot(xi,yi,'*')
end
