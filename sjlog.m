function y = sjlog(x)
%% ���¶���,ʹ0*log0=0
if x==0
y = 0;
else
y = log(x);
end
end