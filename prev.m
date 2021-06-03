function [A,i]=prev(T,A,i,j)
%遍历树 并产生可以被treeplot用来画图的结点序列
% 输入i应为1;j应为0；
%% 函数迭代过程中传递不了A值，所以要在输入和输出上将cell设为变量
if isstruct(T)==1 && (strcmp(T.left,'null')==0 || strcmp(T.right,'null')==0)
   A{i,1}=T.value;
   A{i,2}=j;
   i=i+1;j=i-1;
   %% i随迭代不断增加，但j是固定在每步迭代当中
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