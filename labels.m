% Clear All %
clc; clear all; close all;
%img=imread('brain.png’);
img=imread('D:\mathwork\iphone6\001_IP5_IN_F_RI_01_2.jpg');
figure('name','Input Image');imshow(img);
imgGray=rgb2gray(img);
figure('name','Gray Image');imshow(imgGray);
[m,n]=size(imgGray);
nn=30;
disp('Select foreground piexel');
[y,x]=ginput(nn);
hold on;
x=round(x);%foreground
y=round(y);
disp('Select background piexel');
[yb,xb]=ginput(nn);
xb=round(xb);%background
yb=round(yb);
label1=zeros(m,n);
for i=1:nn
a1=x(i);%foreground
b1=y(i);
a2=xb(i);%background
b2=yb(i);
label1(a1,b1)=1;%foreground %
label1(a2,b2)=-1;%background %
end
labels=double(label1+2);
% labels=double(label1);
figure('name','labels Image');imshow(labels,[]);
imwrite(labels,gray,'label22.png');
imgLabel=double(imread('label22.png'));
figure('name','Read Label Image');imshow(imgLabel,[]);
% Convert back to -1,0,1 range %
imgLabelC=imgLabel-1;
figure('name','Read Label Image Convert to -1,0,1 range');imshow(imgLabelC,[]);
