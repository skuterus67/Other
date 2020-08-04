%--------------------------------------------------------------------------
%------------  Systems Analysis and Decision Making  ----------------
%--------------------------------------------------------------------------
% Lab 3: Face detection
% authors: A. Gonczarek, J.M. Tomczak, S. Zarêba, M. Ziêba
% 2016
%--------------------------------------------------------------------------


function [L, grad] = regularized_logistic_cost_function( xTrain, yTrain, w, lambda )
% Function calculates value (L) and gradient (grad) of l2-regularized objective function
% xTrain - training set NxD
% yTrain - binary vector of classes Nx1
% w - model parameters
% lambda - regularization parameter

N = size(xTrain,1);
M = size(w,1);

L = 0;
grad = zeros(M,1);

%--------------------------------------------------------------------------
%---------------------- YOUR IMPLEMENTATION HERE --------------------------
%--------------------------------------------------------------------------

SIGn = sigmoid(xTrain * w);
reg = lambda * sum(w(2:end).^2)/2;
L = -(sum(log(SIGn).' * yTrain + log(1 - SIGn).' * (1 - yTrain))/N) + reg;
grad = xTrain.' * (SIGn - yTrain)/N;
w(1) = 0;
grad = grad + lambda * w;

%--------------------------------------------------------------------------

end