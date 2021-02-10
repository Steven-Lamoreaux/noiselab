data
lbd=9000;
upd=11000;
rs=100;
[vv,bol]=voltage(lbd,upd,rs);
vv
bol



function [vv,bol]=voltage(lbd,upd,rs)
np=size(data);
time=10;
tpwr=sum(pwr(9994:10006))/(np(1))^2/(upd-lbd+1);
vv=tpwr/gain;
bol=vv*time/4/300/rs;
end

