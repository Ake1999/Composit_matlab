function val=Ts(teta)
    m=cos(teta);
    n=sin(teta);
    val=[m^2  , n^2 , 2*m*n ...
        ;n^2  , m^2 , -2*n*m ...
        ;-m*n , m*n , m^2-n^2];
end
