lbd=9000;
upd=11000;
rs=10000000;
time=10;
np=size(data);
apwr=sum(pwr(lbd:upd))/(np(1))^2/(upd-lbd+1)
variance=var(pwr(lbd:upd))/(np(1))^2/(upd-lbd+1)
vv=apwr/gain
bol=vv*time/4/300/rs