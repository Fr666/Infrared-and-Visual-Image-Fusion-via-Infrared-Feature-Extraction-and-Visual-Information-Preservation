% This is the main function of the paper "Infrared and Visual Image Fusion 
% through Infrared Feature Extraction and Visual Information, Infrared Physics & Technology, 2017."
% Implemented by Zhang Yu (uzeful@163.com).


% clear history and memory
clc,clear,close all;

% para settings
QuadNormDim = 512;
QuadMinDim = 32;
GaussScale = 9;
MaxRatio = 0.001;
StdRatio = 0.8;

% image sets
names = {'Camp', 'Camp1', 'Dune', 'Gun', 'Navi', 'Kayak', 'Octec', 'Road', 'Road2' 'Steamboat', 'T2', 'T3', 'Trees4906', 'Trees4917'};

% read one image set
setName = names{1};
imgVis = imread(strcat('Dataset\', setName, '_Vis.png'));
imgIR = imread(strcat('Dataset\', setName, '_IR.png'));

% image fusion
result = BGR_Fuse(imgVis, imgIR, QuadNormDim, QuadMinDim, GaussScale, MaxRatio, StdRatio);

% show image
figure, imshow(result)