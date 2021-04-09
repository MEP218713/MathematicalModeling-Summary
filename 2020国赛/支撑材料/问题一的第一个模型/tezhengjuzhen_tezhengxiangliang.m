clear
A=load('A.txt');
B=A';%将导入的数据矩阵进行转置
C=zscore(B);%数据标准化
E=[1 1/3 1/4;3 1 7;4 1/7 1];%成对比较判断矩阵
[x,y]=eig(E);%x是特征向量矩阵，y是特征值矩阵
lamda=max(diag(y));%求最大特征值
[max_column, index_row] = max(y);%最大特征值所在位置
w=x(:,index_row(2));%对应特征向量