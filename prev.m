function [A,i]=prev(T,A,i,j)
%������ ���������Ա�treeplot������ͼ�Ľ������
% ����iӦΪ1;jӦΪ0��
%% �������������д��ݲ���Aֵ������Ҫ�����������Ͻ�cell��Ϊ����
if isstruct(T)==1 && (strcmp(T.left,'null')==0 || strcmp(T.right,'null')==0)
   A{i,1}=T.value;
   A{i,2}=j;
   i=i+1;j=i-1;
   %% i������������ӣ���j�ǹ̶���ÿ����������
   [A,i]=prev(T.left,A,i,j);
   i=i+1;
   [A,i]=prev(T.right,A,i,j);
else if isstruct(T)==1 && strcmp(T.left,'null')==1 && strcmp(T.right,'null')==1
        A{i,1}=T.value;
        A{i,2}=j;
    else
    A{i,1}=T;
    A{i,2}=j;
    end
end
end