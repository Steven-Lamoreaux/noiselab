dt = zeros(5, 1); 
i = 1;
while (i <= 5) 
    readnoise
    y=fft(data);
    pwr=y.*conj(y);
    np=size(data);
    cpwr=sum(pwr(9994:10006))/(np(1))^2;
    gain=cpwr/(5.230e-6)^2;
    
    dt(i,1) = gain;
   
    i = i+1; 
end
mean(dt(:,1))
var(dt(:,1)) 