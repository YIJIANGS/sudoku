function no_repeat=isRepeat(mat)
% �ж�����
for i=1:9
    a=mat(:,i);
    temp_col=a(a>0);
    if numel(temp_col)>numel(unique(temp_col))
        repeat1=0;
        break
    else
        repeat1=1;
    end
end
%�ж�3*3�ĸ���
for i=1:3:9
    for j=1:3:9
        a=mat(i:i+2,j:j+2);
        temp_col=a(a>0);
        if numel(temp_col)>numel(unique(temp_col))
            repeat2=0;
        else
            repeat2=1;
        end
        if repeat2==0;break;end
    end
    if repeat2==0;break;end
end
no_repeat=repeat1*repeat2;
end