function q7(n)
    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll', lblTrainAll);
    
    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    count = 0 ; 
        for j = 1 : length(imgTestAll)
        imgTest = imgTestAll(:, j);
        lblPredictTest = predict(Mdl, imgTest');
        if(n == lblTestAll(j))
            if(lblPredictTest == lblTestAll(j))
            
        else
            count = count + 1 ; 
        end
        end
        end
        fprintf ('\n Nhan [%d] co [%d] hinh sai',n,count);
        count = 0 ; 
end
 
 