clear
A=load('A.txt');
B=A';%����������ݾ������ת��
[m,n]=size(B);
C=zscore(B);%���ݱ�׼��
C=C';
E=[1 1/3 1/4;3 1 7;4 1/7 1];%�ɶԱȽ��жϾ���
[x,y]=eig(E);%x��������������y������ֵ����
lamda=max(diag(y));%���������ֵ
[max_column, index_row] = max(y);%�������ֵ����λ��
w=x(:,index_row(2));%��Ӧ��������
w=w';
w=repmat(w,n,1);
D=C.*w;%�����Ȩ����
cstar=max(D);%���������
D0=min(D);%�������
for i = 1:n
    sstar(i)=norm(D(1,:)-cstar)%���������ľ���
    s0(i)=norm(D(i,:)-D0)%�󵽸������ľ���
end
f=s0./(sstar+s0);
xlswrite('a1.xls',[sstar' s0' f'])%�Ѽ�����д��excel��
