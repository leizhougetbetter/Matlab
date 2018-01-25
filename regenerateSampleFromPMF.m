%% data gives the count (Probability mass function) for each value of the number of A

data = importdata('datafile');

numAPlusOnePresent = find(data > 0);

sampleArray = [];

for indexNumA = 1 : length(numAPlusOnePresent)
    numAPlusOneNow = numAPlusOnePresent(indexNumA);
    sampleArray = [sampleArray, (numAPlusOneNow-1) * ones(1, dataDist(numAPlusOneNow))];
end
