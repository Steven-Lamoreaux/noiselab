global data;
daq.getDevices;
s=daq.createSession('ni');
ch=addAnalogInputChannel(s,'Dev5',0,'Voltage');
ch(1).TerminalConfig='SingleEnded';
s.Rate=48000;
s.DurationInSeconds=10;
[data,timestamp]=startForeground(s);
%plot(timestamp,data)
%output
% cho=addAnalogOutputChannel(s,'Dev2','ao0','Voltage');
% cho=addAnalogOutputChannel(s,'Dev2','ao1','Voltage');
% v(1,1)=1;
% v(1,2)=5;
% outputSingleScan(s,v);
