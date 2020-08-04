function main( )
load('trainX.mat');
load('testX.mat');
load('trainY.mat');
X=trainX;
X_t=s1;
Y=trainY;
% D=size(X,2);
% distances=pdist2(X,X_t,'euclidean')*D;
distances1=hamming_distance( X,X_t );
% save('dista1.mat','distances1');
% load('dista1.mat');
stl=sort_train_labels_KNN(distances1,Y);
p_y_x=p_y_x_KNN(stl,5);
y=mode(p_y_x,2);
l=size(Y,1);
cnt=0;
for i=1:l
    if y(i)==Y(i)
       cnt=cnt+1;
    end
end
cnt=(cnt*100)/l;
disp(cnt);
end

