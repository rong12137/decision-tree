function Iris(P)
%������
%PΪ�Ӽ����������ռ������ȡֵӦ��[0��1]��
P=0.4;
[attrib]=Iris_tree_preprocess();
tree = Iris_tree(attrib,P);
A=cell(1,1);
[A,]=prev(tree,A,1,0);
print_tree(A,P)
end
