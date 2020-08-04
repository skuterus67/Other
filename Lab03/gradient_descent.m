%--------------------------------------------------------------------------
%------------  Systems Analysis and Decision Making  ----------------
%--------------------------------------------------------------------------
% Lab 3: Face detection
% authors: A. Gonczarek, J.M. Tomczak, S. Zarêba, M. Ziêba
% 2016
%--------------------------------------------------------------------------


function [w func_values] = gradient_descent( obj_fun, w0, epochs, eta )
% Function optimizes obj_fun using gradient descent method. 
% Returns variable w, which minimizes objective function, and values of the
% objective function in all optimization steps (func_values)

% obj_fun - pointer to objective function, that is callable by: obj_fun(w)
% w0 - starting point (initial parameter values)
% epochs - number of epochs / number of algorithm iterations
% eta - learning rate

func_values = [];
w = zeros(size(w0));

%--------------------------------------------------------------------------
%---------------------- YOUR IMPLEMENTATION HERE --------------------------
%--------------------------------------------------------------------------

w = w0;
func_values = zeros(epochs,1);
[~, grad] = obj_fun(w);
for i = 1:epochs
    w = w - eta*grad;
    [func_values(i), grad] = obj_fun(w);
end

%--------------------------------------------------------------------------

end