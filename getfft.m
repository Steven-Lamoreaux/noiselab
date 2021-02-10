
rs=1000000;

dt = zeros(5, 4); 

i = 1;
while (i <= 5) 
   

    readnoise
    y=fft(data);
    pwr=y.*conj(y);
    lbd=9000;
    upd=11000;
    time=10;
    np=size(data);
    apwr=sum(pwr(lbd:upd))/(np(1))^2/(upd-lbd+1);
    variance=var(pwr(lbd:upd))/(np(1))^2/(upd-lbd+1);
    vv=apwr/gain;
    bol=vv*time/4/300/rs;
     dt(i,1) = apwr;
    dt(i,2) = variance;
    dt(i,3) = vv; 
    dt(i,4) = bol; 
    
    i = i+1; 
end

rs
% mean of v^2
mean(dt(:,3))
% var of v^2
var(dt(:,3)) 
% mean of boltz estimate
mean(dt(:,4))