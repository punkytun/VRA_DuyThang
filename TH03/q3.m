function q3()
    fprintf ('\n Load du lieu train');
    imgTrainAll = loadMNISTImages ('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels ('./train-labels.idx1-ubyte');
    count = 0;
    for j=0:9
        for i = 1 :length(lblTrainAll)
            if lblTrainAll(i) == j
                count = count + 1 ;       
            end 
        end
        fprintf('Nhan [%d] co: %d anh\n', j, count);
        count = 0;
    end
end
