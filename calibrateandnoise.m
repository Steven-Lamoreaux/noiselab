%calibrate 1 kHz signal, 50 sec acq. time, 48kHz sample rate
% 2400000 points 
vcal=input('swith to Ext. and Enter vrms (in Volts) from SR510   ');
readnoise
tmeas=50;
fs=48e3;
npts=length(data);
 %equivalent bandwidth
bw=enbw(rectwin(npts),fs)
fd=fft(data).*conj(fft(data))/length(data)^2;
n=1:npts;
plot(f,fd)
f=(n-1)/tmeas;
figure(1)
plot(n,fd)
% total calibrator power, V^2, sum around 1 kHz fft peak
calpower=sum(fd(49994:50003));
gain=(calpower/vcal^2)
r=input('switch to resistor, and Enter resistor value (ohms)   ');
%noise around 1 kHz
readnoise
fdn=fft(data).*conj(fft(data))/length(data)^2;
figure(2)
loglog(n,fdn)
noise=mean(fdn(4.8e4:5.2e4))
signoise=std(fdn(4.8e4:5.2e4))/sqrt(5.2e4-4.8e4+1)
kb=noise/gain/4/300/r/bw
skb=signoise/gain/4/300/r/bw