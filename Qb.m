function val=Qb(a,b,c,d)
    switch nargin
       case 4
            if(a==6)
                a=3;
            end
            if(b==6)
                b=3;
            end
            q=Q(c);
            ts=Ts(d);
            tep=Tep(d);
            qb=ts\q*tep;
            val=qb(a,b);
        case 3
            if(a==6)
                a=3;
            end
            if(b==6)
                b=3;
            end
            q=Q("t300/5208");
            ts=Ts(c);
            tep=Tep(c);
            qb=ts\q*tep;
            val=qb(a,b);
        case 2
            q=Q(a);
            ts=Ts(b);
            tep=Tep(b);
            qb=ts\q*tep;
            val=qb;
        case 1
            q=Q("t300/5208");
            ts=Ts(a);
            tep=Tep(a);
            qb=ts\q*tep;
            val=qb;
    end
end
