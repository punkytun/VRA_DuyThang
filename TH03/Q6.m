function Q6(n)
    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll', lblTrainAll);
 
    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    
    nTrainImages = size(imgTrainAll, 2);
    nTrainLabels = size(lblTrainAll, 1);
    
    nTestImages = size(imgTestAll, 2);
    nTestLabels = size(lblTestAll, 1);
    
  
    imgTest = imgTestAll(:, n);
    lblPredictTest = predict(Mdl, imgTest');
    
    lblImgTest = lblTestAll(n);
    figure;
    img2D = reshape(imgTest, 28, 28);
    imshow(img2D);
    
    strLabelImage = "Ban dau ";
    strLabelImage = [strLabelImage, num2str(lblTestAll(n)), '.'];
    title(strLabelImage);
    
    strLabelImage = [strLabelImage, ' Du doan: '];
    strLabelImage = [strLabelImage, num2str(lblPredictTest), '.' ];
    if(lblPredictTest == lblImgTest)
        strLabelImage = [strLabelImage, ' Ket qua dung. '];
    else
        strLabelImage = [strLabelImage, ' Ket qua sai. '];
    end
    title(strLabelImage);
end
