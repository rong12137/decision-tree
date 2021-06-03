function y = sjlog(x)
%% 重新定义,使0*log0=0
if x==0
y = 0;
else
y = log(x);
end
end