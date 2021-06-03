function Iris(P)
%主函数
%P为子集最大样例所占比例，取值应在[0，1]内
P=0.4;
[attrib]=Iris_tree_preprocess();
tree = Iris_tree(attrib,P);
A=cell(1,1);
[A,]=prev(tree,A,1,0);
print_tree(A,P)
end
