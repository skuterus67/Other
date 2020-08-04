function per=percentage (predicted, trainY)
k=size(predicted, 1);
per=0;
for i=1:k
    if predicted(i)==trainY(i)
        per=per+1;
    end
end
per=per/k;
end