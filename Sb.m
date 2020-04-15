function val=Sb(a,b,c,d)
    switch nargin
       case 4
            if(a==6)
                a=3;
            end
            if(b==6)
                b=3;
            end
            s=S(c);
            ts=Ts(d);
            tep=Tep(d);
            sb=tep\s*ts;
            val=sb(a,b);
        case 3
            if(a==6)
                a=3;
            end
            if(b==6)
                b=3;
            end
            s=S("t300/5208");
            ts=Ts(c);
            tep=Tep(c);
            sb=tep\s*ts;
            val=sb(a,b);
        case 2
            s=S(a);
            ts=Ts(b);
            tep=Tep(b);
            sb=tep\s*ts;
            val=sb;
        case 1
            s=S("t300/5208");
            ts=Ts(a);
            tep=Tep(a);
            sb=tep\s*ts;
            val=sb;
    end
end
