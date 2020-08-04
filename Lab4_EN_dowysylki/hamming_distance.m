%--------------------------------------------------------------------------
%---------------  System Analysis and Decision Making  --------------------
%--------------------------------------------------------------------------
% Assignment 2: KNN and Naive Bayes
% authors: M. Ziêba, A. Gonczarek, J.M. Tomczak, S. Zarêba
% 2016
%--------------------------------------------------------------------------

function [ Dist ] = hamming_distance( X,Xtrain )
% Function calculates Hamming distances of elements in set X from elements in set Xtrain.
% Distances of objects are returned as matrix Dist

% REMARK! Objects X and Xtrain are sparse and logical. Dist is full and double.

% X - set of objects we are comparing N1xD
% Xtrain - set of objects to which X objects are compared N2xD
% Dist - matrix of distances between X and Xtrain objects N1xN2
% N1 - number of elements in X
% N2 - number of elements in Xtrain
% D - number of features (key words)

N1 = size(X,1);
N2 = size(Xtrain,1);

Dist = zeros(N1,N2);

%--------------------------------------------------------------------------
%------------------------- YOUR IMPLEMENTATION ----------------------------
%--------------------------------------------------------------------------
Xf=double(full(X));
Xtrf=double(full(Xtrain));

Dist=(~Xf*Xtrf.')+(Xf*~Xtrf.');
        








%-------------------------------------------------------------------------
end

