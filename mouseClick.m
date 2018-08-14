function mouseClick (~,~)
global newMat fig1 m n validPos

C = get (gca, 'CurrentPoint');
m=ceil(C(1,1)/50);
n=ceil(C(1,2)/50);
mat2=newMat;
if newMat(n,m)==0
    validPos=1;
 mat2(n,m)=999;
else
    validPos=0;
end
map=kron(mat2,ones(50));
map(map==999)=.9;
map(map~=.9)=1;
map([1:50:end end],:)=.5;
map(:,[1:50:end end])=.5;
map([1:150:end end],:)=0;
map(:,[1:150:end end])=0;
fig1.CData=map;