clear all;
clc;
% first : you have to prepare your data
x=imread('70.jpg');
x=rgb2gray(x);
subplot(121)
imshow(x)
xlabel('original image');
x=double(x);
for i=1:50
number_neurons=i;% number of neurons
ActivF='sig';% activation function
[prefomance,B,Hnew]=ELM_AE(x,ActivF,number_neurons);
regenerated=Hnew*pinv(B');
subplot(122)
imshow(regenerated);
Tc=num2str(prefomance);
Tc= ['RMSE = ' Tc];
xlabel('regenerated')
title(Tc)
pause(0.25)
end