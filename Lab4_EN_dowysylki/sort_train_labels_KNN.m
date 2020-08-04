%--------------------------------------------------------------------------
%---------------  System Analysis and Decision Making  --------------------
%--------------------------------------------------------------------------
% Assignment 2: KNN and Naive Bayes
% authors: M. Ziêba, A. Gonczarek, J.M. Tomczak, S. Zarêba
% 2016
%--------------------------------------------------------------------------

function [ y_sorted ] = sort_train_labels_KNN(Dist,y)
% Function sorts training dataset labels accordingly to probabilities 
% stored in matrix Dist. 
%
% Functions returns N1xN2 matrix. Each row of the 
% matrix contains class labels from y sorted accordingly to
% probabilities stored in corresponding row of matrix Dist. 
%
% Dist - matrix storing distances between objects X and Xtrain N1xN2
% y - vector of labels N2
% N1 - number of elements in X
% N2 - number of elements in Xtrain
% y_sorted - matrix of labels sorted accordingly to probabilities stored in 
% matrix Dist N1xN2 

y_sorted = zeros(size(Dist));

%--------------------------------------------------------------------------
%------------------------- YOUR IMPLEMENTATION ----------------------------
%--------------------------------------------------------------------------


[~,I] = sort(Dist,2);
y_sorted = y(I);





%-------------------------------------------------------------------------
end

