function val=Q(a,b,c)
    switch nargin
       case 3
            if(a==6)
                a=3;
            end
            if(b==6)
                b=3;
            end
            s=S(c);
            q=inv(s);
            val=q(a,b);
        case 2
            if(a==6)
                a=3;
            end
            if(b==6)
                b=3;
            end
            s=S("t300/5208");
            q=inv(s);
            val=q(a,b);
        case 1
            s=S(a);
            q=inv(s);
            val=q;
        otherwise
            s=S("t300/5208");
            q=inv(s);
            val=q;
    end
end
