%--------------------------------------------------------------------------
%---------------  System Analysis and Decision Making  --------------------
%--------------------------------------------------------------------------
% Assignment 2: KNN and Naive Bayes
% authors: M. Ziêba, A. Gonczarek, J.M. Tomczak, S. Zarêba
% 2016
%--------------------------------------------------------------------------

function [ p_y_x ] = p_y_x_KNN(y, K )
% Function calculates distribution p(y|x) for each class and each object 
% from test dataset using KNN classifier

% y - matrix of sorted class labels for training dataset N1xN2
% K - number of nearest neighbors
% p_y_x - probability matrix for object in X
% each row of matrix represents distribution p(y|x)) N1xM

% N1 - number of elements in testing dataset
% N2 - number of elements in training dataset
% M - number of classes

% N1 - number of elements in testing dataset
N1 = size(y,1);

% M - number of classes
M = length(unique(y));

% Initialization of probabilities
p_y_x = zeros(N1,M);

%--------------------------------------------------------------------------
%------------------------- YOUR IMPLEMENTATION ----------------------------
%--------------------------------------------------------------------------

% for i=1:N1
%     for j=1:K
%         p_y_x(i,y(i,j))=p_y_x(i,y(i,j))+1;
%     end
% end
p_y_x=y(:,1:K);
% p_y_x=p_y_x/K;






%-------------------------------------------------------------------------
end

