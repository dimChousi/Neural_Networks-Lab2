% Part 2A - Question Data

clear;
foo = importdata('QuestionData.m');
QuestionPatterns = foo.data;

global IW distances;

minimum = min(QuestionPatterns);
minimum = minimum';
maximum = max(QuestionPatterns);
maximum = maximum';
minMax = [minimum maximum];
gridSize = [10 10];
somCreate(minMax, gridSize);

setOrderLR = 0.9;
setOrderSteps = 250;
setTuneLR = 0.1;
somTrainParameters(setOrderLR, setOrderSteps, setTuneLR);

somTrain(QuestionPatterns);

figure; plot2DSomData(IW, distances, QuestionPatterns);
figure;somShow(IW,gridSize);