%--------------------------------------------------------------------------
%------------  Systems Analysis and Decision Making  ----------------
%--------------------------------------------------------------------------
% Lab 3: Face detection
% authors: A. Gonczarek, J.M. Tomczak, S. Zarêba, M. Ziêba
% 2016
%--------------------------------------------------------------------------


function y = prediction(X, w, theta)
% Function calculates labels y for feature matrix X based on logistic regression model,
% which has parameter vector w and threshold theta 

% X - observation matrix NxD
% w - vector of model parameters Dx1
% theta - classification threshold

N = size(X,1);
y = zeros(N,1);

%--------------------------------------------------------------------------
%---------------------- YOUR IMPLEMENTATION HERE --------------------------
%--------------------------------------------------------------------------

y = (sigmoid(X * w) >= theta);

%--------------------------------------------------------------------------

end