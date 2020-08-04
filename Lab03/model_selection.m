%--------------------------------------------------------------------------
%------------  Systems Analysis and Decision Making  ----------------
%--------------------------------------------------------------------------
% Lab 3: Face detection
% authors: A. Gonczarek, J.M. Tomczak, S. Zarêba, M. Ziêba
% 2016
%--------------------------------------------------------------------------


function [lambda_best theta_best w F] = model_selection(xTrain,yTrain,xVal,yVal,w0,...
    epochs,eta,mini_batch,lambdas,thetas)
% Function performs model selection. It adjust value of regularization parameter 
% lambda_best, classification threshold theta_best, and model parameters w. 
% Additionally, function returns Fmeasure values for all pairs (lambda, theta). 
% For training purposes an SGD with l2 regularization have to be used. 
%
% Pointer to objective function for particular value of lambda
% is defined as follows:
% obj_fun = @(X,Y,w)(regularized_logistic_cost_function(X,Y,w,lambda));
%
% xTrain - training set NxD
% yTrain - binary vector of training classes Nx1
% xVal - validation set NvalxD
% yVal - binary vector of validation classes Nvalx1
% w0 - initial value of model parameters w
% eta - learning rate
% mini_batch - size of SGD minibatch
% epochs - number of epochs / iterations for SGD
% lambdas - vector of lambda values that are going to be evaluated in model selection procedure
% thetas - vector of theta values that are going to be evaluated in model selection procedure
 
Nlambda = length(lambdas);
Ntheta = length(thetas);
F = zeros(Nlambda,Ntheta);
w = zeros(size(w0));
lambda_best = 0;
theta_best = 0;

%--------------------------------------------------------------------------
%---------------------- YOUR IMPLEMENTATION HERE --------------------------
%--------------------------------------------------------------------------

wALL = zeros(Nlambda,size(w0,1));
for lmbd = 1:Nlambda
    [wALL(lmbd,:), ~] = stochastic_gradient_descent( @(X,Y,w)(regularized_logistic_cost_function(X,Y,w,lambdas(lmbd))),...
        xTrain, yTrain,w0, epochs, eta, mini_batch );
    for tht = 1:Ntheta
        yPred = prediction(xVal, wALL(lmbd,:).', thetas(tht));
        F(lmbd,tht) = f_measure(yVal, yPred);
    end
end

[~, lambda_best] = max(max(F,[],2));
[~, theta_best] = max(max(F));
theta_best = thetas(theta_best);
w = wALL(lambda_best,:).';
lambda_best = lambdas(lambda_best);
%--------------------------------------------------------------------------

end