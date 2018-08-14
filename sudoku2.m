clear;clc;close all
global newMat fig1 mat validPos
validPos=0;
load numPic.mat
mat=zeros(9);
k=0;
for i=1:3:9
    for j=1:3:9
        a=reshape(circshift(1:9,k),3,3);
        mat(j:j+2,i:i+2)=a';
        k=k+2;
    end
end
%%
rowOrder=[randperm(3),randperm(3)+3,randperm(3)+6];
colOrder=[randperm(3),randperm(3)+3,randperm(3)+6];
newMat=mat(rowOrder,:);
newMat=newMat(:,colOrder);
%%
newMat(randi(81,2))=0;
mat=zeros(9);
%%
map=ones(size(newMat)*50);
map([1:50:end end],:)=.5;
map(:,[1:50:end end])=.5;
map([1:150:end end],:)=0;
map(:,[1:150:end end])=0;
fig1=imshow(map);
hold on
for i=1:9
    for j=1:9
        if newMat(j,i)>0
        text(50*i-30,50*j-30,num2str(newMat(j,i)),'Color','k','FontSize',14)
        end
    end
end
set (gcf, 'WindowButtonDownFcn', @mouseClick);
set(gcf,'WindowKeyPressFcn',@keyPress);
%%


