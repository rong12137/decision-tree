function print_tree(A,P)
%��ӡ��
for i=1:length(A)
    nodes(1,i)=A{i,2};
end
treeplot(nodes);
[x,y]=treelayout(nodes);
x=x';
y=y';
for i=1:length(A)
   name{i,1}=A{i,1};
end
text(x(:,1),y(:,1),name,'VerticalAlignment','bottom','HorizontalAlignment','right')
d=num2str(100*P);
s=strcat('�β��������  ��ȷ��Ϊ',d,'%');
title({s});
end