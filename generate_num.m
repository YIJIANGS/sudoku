clear;clc;close all
I=imread('1.png');
g=rgb2gray(I);
g=im2double(g);
imshow(g)
%%
bw=g<.1;
bw2=conv2(bw,ones(5)/25,'same');
bw2=bw2>.1;
imshow(bw2)
%%
conn=bwconncomp(bw2);
clist=conn.PixelIdxList;
for i=1:9
    [m,n]=ind2sub(size(bw),clist{i});
    numPic{i}=g(min(m):max(m),min(n):max(n));
    a=ones(70);
    a(1:max(m)-min(m)+1,1:max(n)-min(n)+1)=numPic{i};
    a=circshift(a,20,2);
    a=imresize(a,[48 48]);
    numPic{i}=a;
    
end