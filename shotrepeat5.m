
v0=5.07;

dt = zeros(5, 4); 

i = 1;
while (i <= 5) 
    readnoise
    y=fft(data);
    pwr=y.*conj(y);

    lbd=9000;
    upd=11000;
    np=size(data);
    time=10;

    apwr=sum(pwr(lbd:upd))/(np(1))^2/(upd-lbd+1);
    variance=var(pwr(lbd:upd))/(np(1))^2/(upd-lbd+1);
    vv=apwr/gain;
    elec=(vv*10000*time)/(2*v0*15000^2);
    
    dt(i,1) = apwr;
    dt(i,2) = variance;
    dt(i,3) = vv; 
    dt(i,4) = elec; 
    
    i = i+1; 
end

v0
% mean of v^2
mean(dt(:,3))
% var of v^2
var(dt(:,3)) 
% mean of e estimate
mean(dt(:,4))