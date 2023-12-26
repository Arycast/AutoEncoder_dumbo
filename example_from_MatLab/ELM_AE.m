function[prefomance,B,Hnew]=ELM_AE(X,ActivF,number_neurons)
% ELM-AE:the function  create an auto-encoder based ELM. 
% number_neurons:number of neurons in hidden layer.
% X: the training set.
% prefomance: RMSE of training.
X = scaledata(X,0,1);% data Normalization
alpha=size(X);
% 1:generate a random input weights
input_weights=rand(number_neurons,alpha(2))*2-1;
% 2:calculating the hidden layer
tempH=input_weights*X';
% activation function
switch lower(ActivF)
    case {'sig','sigmoid'}
        %%%%%%%% Sigmoid 
        H = 1 ./ (1 + exp(-tempH));
    case {'sin','sine'}
        %%%%%%%% Sine
        H = sin(tempH);    
    case {'hardlim'}
        %%%%%%%% Hard Limit
        H = double(hardlim(tempH));
    case {'tribas'}
        %%%%%%%% Triangular basis function
        H = tribas(tempH);
    case {'radbas'}
        %%%%%%%% Radial basis function
        H = radbas(tempH);
        %%%%%%%% More activation functions can be added here                
end
% 3: calculate the output weights beta
B=pinv(H') * X ; %Moore-Penrose pseudoinverse of matrix
% calculate the output : Unlike other networks the AEs uses the same weight
% beta as an input weigth for coding and output weights for decoding
% we will no longer use the old input weights:input_weights. 
Hnew=X*B';
output=Hnew*pinv(B');
% 4:calculate the prefomance
prefomance=sqrt(mse(X-output));
end