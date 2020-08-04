%--------------------------------------------------------------------------
%------------  Systems Analysis and Decision Making  ----------------
%--------------------------------------------------------------------------
% Lab 3: Face detection
% authors: A. Gonczarek, J.M. Tomczak, S. Zarêba, M. Ziêba
% 2016
%--------------------------------------------------------------------------

function [w func_values] = stochastic_gradient_descent( obj_fun, xTrain, yTrain,...
    w0, epochs, eta, mini_batch )

% Function optimizes obj_fun using stochastic gradient descent method. 
% Returns variable w, which minimizes objective function, and values of the
% objective function at the end of each optimization step (func_values)

% obj_fun - objective function pointer, which is callable by: obj_fun(X,Y,w),  where X,Y
% indicate subsets of training set (mini-batches)
% xTrain - training data NxD
% yTrain - training labels Nx1
% w0 - starting point (initial parameter values)
% epochs - number of epochs / iterations of an algorithm
% eta - learning rate
% mini_batch - size of mini-batch

func_values = [];
w = zeros(size(w0));

%--------------------------------------------------------------------------
%---------------------- YOUR IMPLEMENTATION HERE --------------------------
%--------------------------------------------------------------------------

N = size(yTrain,1);
w = w0;
func_values = zeros(epochs(1),1);
for i = 1:epochs
    for m = mini_batch:mini_batch:N
        [~, grad] = obj_fun(xTrain((m-mini_batch+1):m,:), yTrain((m-mini_batch+1):m),w);
        w = w - eta*grad;
        [func_values(i), ~] = obj_fun(xTrain, yTrain,w);
    end
end

%--------------------------------------------------------------------------

end