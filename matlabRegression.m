%Data points
%(xn, yn)
dataPoints = [
    0, 5;
    -2, 1;
    1, -1;
    -1, -2;
    2, 1;
    -1, 1;
    0, 0;
    0, 0
];
%number of points
n = 6;

%Hardware Implemented
dataHard = zeros(8, 13);
for i=1:8
  dataHard(i, 1) = dataPoints(i, 1);%x
  dataHard(i, 2) = dataPoints(i, 2);%y
  dataHard(i, 3) = dataHard(i, 1) * dataHard(i, 2);%xy
  dataHard(i, 4) = dataHard(i, 1) * dataHard(i, 1);%x2
  dataHard(i, 5) = dataHard(i, 2) * dataHard(i, 2);%y2
  dataHard(i, 6) = dataHard(i, 4) * dataHard(i, 2);%x2y
  dataHard(i, 7) = dataHard(i, 5) * dataHard(i, 1);%y2x
  dataHard(i, 8) = dataHard(i, 4) * dataHard(i, 1);%x3
  dataHard(i, 9) = dataHard(i, 5) * dataHard(i, 2);%y3
  dataHard(i, 10) = dataHard(i, 4) * dataHard(i, 5);%x2y2
  dataHard(i, 11) = dataHard(i, 2) * dataHard(i, 8);%x3y
  dataHard(i, 12) = dataHard(i, 1) * dataHard(i, 9);%y3x
  dataHard(i, 13) = dataHard(i, 2) * dataHard(i, 9);%y4
endfor;
outData = zeros(1, 14);
for i=1:13
  outData(i) = dataHard(1,i) + dataHard(2,i) + dataHard(3,i) + dataHard(4,i) + dataHard(5,i) + dataHard(6,i) + dataHard(7,i) + dataHard(8,i);
endfor;
outData(14) = n;

%End Hardware Implemented

matrix = zeros(5, 6);
matrix(1,1) = outData(13)
matrix(1,2) = outData(12)
matrix(1,3) = outData(7)
matrix(1,4) = outData(9)
matrix(1,5) = outData(5)
matrix(1,6) = 0-outData(10)
matrix(2,1) = matrix(1,2)
matrix(2,2) = outData(10)
matrix(2,3) = outData(6)
matrix(2,4) = outData(7)
matrix(2,5) = outData(3)
matrix(2,6) = 0-outData(11)
matrix(3,1) = matrix(1,3)
matrix(3,2) = matrix(2,3)
matrix(3,3) = outData(4)
matrix(3,4) = outData(3)
matrix(3,5) = outData(1)
matrix(3,6) = 0-outData(8)
matrix(4,1) = matrix(1,4)
matrix(4,2) = matrix(2,4)
matrix(4,3) = matrix(3,4)
matrix(4,4) = outData(5)
matrix(4,5) = outData(2)
matrix(4,6) = 0-outData(6)
matrix(5,1) = matrix(1,5)
matrix(5,2) = matrix(2,5)
matrix(5,3) = matrix(3,5)
matrix(5,4) = matrix(4,5)
matrix(5,5) = outData(14)
matrix(5,6) = 0-outData(4)


rrefMatrix = rref(matrix)

% Define the range for the plot
xRange = -5:0.05:5; % Adjust the range as per your data
yRange = -5:0.05:10; % Adjust the range as per your data

% Create a grid of points
[x, y] = meshgrid(xRange, yRange);

% Calculate the ellipse equation for each point
ellipse = x.^2 + rrefMatrix(1,6)*y.^2 + rrefMatrix(2,6)*x.*y + rrefMatrix(3,6)*x + rrefMatrix(4,6)*y + rrefMatrix(5,6);

% Plot the ellipse
contour(x, y, ellipse, [0, 0], 'LineWidth', 1.5);
hold on; % To retain the current plot and add more data

% Generate some random data points
data_points_x = zeros(1,n);
data_points_y = zeros(1,n);
for i=1:n
  data_points_x(i) = dataPoints(i,1)
  data_points_y(i) = dataPoints(i,2)
endfor


% Plot the data points;

scatter(data_points_x, data_points_y, 'filled', 'red');
hold off;
xlabel('X-axis');
ylabel('Y-axis');
title('Ellipse of Best Fit');
