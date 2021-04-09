clear
R=load('GTJY.txt');
Q=[0.15 0.4 0.15 0.3];
B=Q*R;
xlswrite('gtjy.xls',B)

