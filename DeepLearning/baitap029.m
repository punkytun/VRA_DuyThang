function baitap029
    strFolderDataTrain = fullfile('DataTrain');
    categories = { '0', '1', '2','3','4','5','6','7','8','9'};
    imdsDataTrain = imageDatastore(fullfile(strFolderDataTrain, categories),'LabelSource','foldernames');
    imdsDataTrain.ReadFcn = @(filename)readAndPreprocessImage(filename);
    net = alexnet();
    featureLayer = 'fc7';
    featureDataTrain = activations(net,imdsDataTrain,featureLayer,'MiniBatchSize',32,'OutputAs','columns');
    lblDataTrain = imdsDataTrain.Labels;
    classifier = fitcecoc(featuresDataTrain,lblDataTrain,'Learners','Linear','Coding','onevsall','ObservationsIn','columns');
    
    strFolderDataTest = fullfile('DataTest');
    categories = { '0', '1', '2','3','4','5','6','7','8','9'};
    imdsDataTest = imageDatastore(fullfile(strFolderDataTest, categories),'LabelSource','foldernames');
    imdsDataTest.ReadFcn = @(filename)readAndPreprocessImage(filename);
    featureDataTest = activations(net,imdsDataTest,featureLayer,'MiniBatchSize',32);
    lblActualDataTest = imdsDataTest.Labels;
    lblResult = predict(classifier,featuresDataTest);
    nResult = (lblActualDataTest == lblResult);
    nCount = sum(nResult);
    fprintf ('\n So luong mau dung: %d',nCount);
end
function Iout = readAndPreprocessImage(filename)
    I = imread(filename);
    if ismmatrix(I)
        I = cat(3,I,I,I);
    end
    Iout = imresize (I,[277 277]);
end