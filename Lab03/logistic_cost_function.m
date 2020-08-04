%--------------------------------------------------------------------------
%------------  Systems Analysis and Decision Making  ----------------
%--------------------------------------------------------------------------
% Lab 3: Face detection
% authors: A. Gonczarek, J.M. Tomczak, S. Zarêba, M. Ziêba
% 2016
%--------------------------------------------------------------------------


function [L, grad] = logistic_cost_function( xTrain, yTrain, w )
% This function returns the objective value L and the objective gradient
% xTrain - input data NxD
% yTrain - class labels Nx1
% w - model parameters

N = size(xTrain,1);
D = size(w,1);

L = 0;
grad = zeros(D,1);

%--------------------------------------------------------------------------
%---------------------- YOUR IMPLEMENTATION HERE --------------------------
%--------------------------------------------------------------------------

SIGn = sigmoid(xTrain * w);
L = -sum(log(SIGn).' * yTrain + log(1 - SIGn).' * (1 - yTrain))/N;
grad = xTrain.' * (SIGn - yTrain)/N;

%--------------------------------------------------------------------------

end