function [point,class,num_diff,gain]=Gain(attrib)
%���أ���������С�ؽ��л����Ӽ�
% point ���ֵ���ֵ
% class �������
% num_diff ���ֵ�С�Ӽ�����
numberExamples = length(attrib(:,1));
attri{1,1}=sortrows(attrib,1);
attri{1,2}=sortrows(attrib,2);
attri{1,3}=sortrows(attrib,3);
attri{1,4}=sortrows(attrib,4);
% ����ĳ������
class=1;
point=0;
gain=20;
 
for s=1:4
    j=1;
    clear  different
for i=1:numberExamples-1
    if attri{1,s}(i,5)~=attri{1,s}(i+1,5)
        different(j)=i;
        j=j+1;
    end
end
 
for i=1:length(different)
    classs=s;
    pointt=attri{1,s}(different(i),s);
    num_class_1=sum(attri{1,s}((1:different(i)),5)==1);
    num_class_2=sum(attri{1,s}((1:different(i)),5)==2);
    num_class_3=sum(attri{1,s}((1:different(i)),5)==3);
    num0_class_1=sum(attri{1,s}(:,5)==1)- num_class_1;
    num0_class_2=sum(attri{1,s}(:,5)==2)- num_class_2;
    num0_class_3=sum(attri{1,s}(:,5)==3)- num_class_3;
    
    gainn=-(different(i)/numberExamples)*((num_class_1/different(i))*sjlog(num_class_1/different(i))+(num_class_2/different(i))*sjlog(num_class_2/different(i))+(num_class_3/different(i))*sjlog(num_class_3/different(i)))-(1-different(i)/numberExamples)*((num0_class_1/(numberExamples-different(i)))*sjlog(num0_class_1/(numberExamples-different(i)))+(num0_class_2/(numberExamples-different(i)))*sjlog(num0_class_2/(numberExamples-different(i)))+(num0_class_3/(numberExamples-different(i)))*sjlog(num0_class_3/(numberExamples-different(i))));
   %������
    if gainn<gain
        point=pointt;
        class=classs;
        gain=gainn;
        num_diff=different(i);
    end    
end
end
end