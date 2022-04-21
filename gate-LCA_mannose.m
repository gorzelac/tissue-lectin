matrix = load("matrix.txt");

gatein = (matrix(6:256,2:256));
totalin =(matrix(2:256,2:256));

gate = sum(gatein(:));
total = sum(totalin(:));
fraction = ((gate./total)*100);
fraction  #shows the percentage of events in the indicated gate in relation to the total number of considered events

clear();