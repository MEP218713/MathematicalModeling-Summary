clear
A=load('A.txt');
B=A';%����������ݾ������ת��
C=zscore(B);%���ݱ�׼��
E=[1 1/3 1/4;3 1 7;4 1/7 1];%�ɶԱȽ��жϾ���
[x,y]=eig(E);%x��������������y������ֵ����
lamda=max(diag(y));%���������ֵ
[max_column, index_row] = max(y);%�������ֵ����λ��
w=x(:,index_row(2));%��Ӧ��������