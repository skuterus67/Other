%--------------------------------------------------------------------------
%------------  Systems Analysis and Decision Making  ----------------
%--------------------------------------------------------------------------
% Lab 3: Face detection
% authors: A. Gonczarek, J.M. Tomczak, S. Zar�ba, M. Zi�ba
% 2016
%--------------------------------------------------------------------------


function y = sigmoid( x )
% This function calculates the logistic sigmoid function.

y = 0;

%--------------------------------------------------------------------------
%---------------------- YOUR IMPLEMENTATION HERE --------------------------
%--------------------------------------------------------------------------

y = 1./(1 + exp(-x));

%--------------------------------------------------------------------------

end