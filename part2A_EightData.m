% Part 2A - Eight Data

clear;
foo = importdata('EightData.m');
EightPatterns = foo.data;

global IW distances;

minimum = min(EightPatterns);
minimum = minimum';
maximum = max(EightPatterns);
maximum = maximum';
minMax = [minimum maximum];
gridSize = [10 10];
somCreate(minMax, gridSize);

setOrderLR = 0.9;
setOrderSteps = 250;
setTuneLR = 0.1;
somTrainParameters(setOrderLR, setOrderSteps, setTuneLR);

somTrain(EightPatterns);

figure; plot2DSomData(IW, distances, EightPatterns);
figure;somShow(IW,gridSize);