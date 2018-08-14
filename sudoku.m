clear;clc;close all
mat=zeros(9);

for rowNum=1:8
    no_repeat=0;
    while no_repeat==0
        mat(rowNum,:)=randperm(9);
        no_repeat=isRepeat(mat);
    end
end
%%
for i=1:9
    Num=find(diff(sort(mat(:,i)))==2);
    if isempty(Num)
        mat(9,i)=9;
    else
        mat(9,i)=Num;
    end
end