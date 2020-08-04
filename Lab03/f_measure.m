%--------------------------------------------------------------------------
%------------  Systems Analysis and Decision Making  ----------------
%--------------------------------------------------------------------------
% Lab 3: Face detection
% authors: A. Gonczarek, J.M. Tomczak, S. Zarêba, M. Ziêba
% 2016
%--------------------------------------------------------------------------

function f = f_measure(yTrue, yPred)
% Function calculates F-measure
% yTrue - ground truth labels
% yPred - labels predicted by the model

f = 0;

%--------------------------------------------------------------------------
%---------------------- YOUR IMPLEMENTATION HERE ---------------------------
%--------------------------------------------------------------------------

TP = 2 * sum(yTrue & yPred);
f = TP/(TP + sum(~yTrue & yPred) + sum(yTrue & ~yPred));

%--------------------------------------------------------------------------

end