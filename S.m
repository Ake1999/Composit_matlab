function val=S(a,b,c)
    switch nargin
       case 3
            if(a==6)
                a=3;
            end
            if(b==6)
                b=3;
            end
            s=calcS(c);
            val=s(a,b);
        case 2
            if(a==6)
                a=3;
            end
            if(b==6)
                b=3;
            end
            s=calcS("t300/5208");
            val=s(a,b);
        case 1
            s=calcS(a);
            val=s;
        otherwise
            s=calcS("t300/5208");
            val=s;
    end
end
function s=calcS(mat)
    [E1,E2,G12,V12,V21]=getval(mat);
    s=[ 1/E1 , -V21/E2 , 0 ; -V12/E1 ,1/E2 , 0 ; 0 , 0 , 1/G12];
end
