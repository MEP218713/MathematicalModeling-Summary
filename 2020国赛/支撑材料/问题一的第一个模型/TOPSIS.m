clear
A=load('A.txt');
B=A';%将导入的数据矩阵进行转置
[m,n]=size(B);
C=zscore(B);%数据标准化
C=C';
E=[1 1/3 1/4;3 1 7;4 1/7 1];%成对比较判断矩阵
[x,y]=eig(E);%x是特征向量矩阵，y是特征值矩阵
lamda=max(diag(y));%求最大特征值
[max_column, index_row] = max(y);%最大特征值所在位置
w=x(:,index_row(2));%对应特征向量
w=w';
w=repmat(w,n,1);
D=C.*w;%计算加权属性
cstar=max(D);%求正理想解
D0=min(D);%求负理想解
for i = 1:n
    sstar(i)=norm(D(1,:)-cstar)%求到正理想解的距离
    s0(i)=norm(D(i,:)-D0)%求到负理想解的距离
end
f=s0./(sstar+s0);
xlswrite('a1.xls',[sstar' s0' f'])%把计算结果写入excel中
