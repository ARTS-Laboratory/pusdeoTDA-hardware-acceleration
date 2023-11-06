#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define N 8 // 8 data points

void calculateEllipse(int dataPoints[N][2], int n) {
    int dataHard[N][13] = {0};
    int outData[14] = {0};

    for (int i = 0; i < N; i++) {
        dataHard[i][0] = dataPoints[i][0]; // x
        dataHard[i][1] = dataPoints[i][1]; // y
        dataHard[i][2] = dataHard[i][0] * dataHard[i][1]; // xy
        dataHard[i][3] = dataHard[i][0] * dataHard[i][0]; // xy
        dataHard[i][4] = dataHard[i][1] * dataHard[i][1]; // xy
        dataHard[i][5] = dataHard[i][3] * dataHard[i][1]; // xy
        dataHard[i][6] = dataHard[i][4] * dataHard[i][0]; // xy
        dataHard[i][7] = dataHard[i][3] * dataHard[i][0]; // xy
        dataHard[i][8] = dataHard[i][4] * dataHard[i][1]; // xy
        dataHard[i][9] = dataHard[i][3] * dataHard[i][4]; // xy
        dataHard[i][10] = dataHard[i][1] * dataHard[i][7]; // xy
        dataHard[i][11] = dataHard[i][0] * dataHard[i][8]; // xy
        dataHard[i][12] = dataHard[i][1] * dataHard[i][8]; // xy
    }

    for (int i = 0; i < 13; i++) {
        for (int j = 0; j < N; j++) {
            outData[i] += dataHard[j][i];
        }
    }
    outData[13] = n;

    int matrix[5][6] = {0};
    
    matrix[0][0] = outData[12];
    matrix[0][1] = outData[11];
    matrix[0][2] = outData[6];
    matrix[0][3] = outData[8];
    matrix[0][4] = outData[4];
    matrix[0][5] = 0-outData[9];
    matrix[1][0] = matrix[0][1];
    matrix[1][1] = outData[9];
    matrix[1][2] = outData[5];
    matrix[1][3] = outData[6];
    matrix[1][4] = outData[2];
    matrix[1][5] = 0-outData[10];
    matrix[2][0] = matrix[0][2];
    matrix[2][1] = matrix[1][2];
    matrix[2][2] = outData[3];
    matrix[2][3] = outData[2];
    matrix[2][4] = outData[0];
    matrix[2][5] = 0-outData[7];
    matrix[3][0] = matrix[0][3];
    matrix[3][1] = matrix[1][3];
    matrix[3][2] = matrix[2][3];
    matrix[3][3] = outData[4];
    matrix[3][4] = outData[1];
    matrix[3][5] = 0-outData[5];
    matrix[4][0] = matrix[0][4];
    matrix[4][1] = matrix[1][4];
    matrix[4][2] = matrix[2][4];
    matrix[4][3] = matrix[3][4];
    matrix[4][4] = outData[13];
    matrix[4][5] = 0-outData[3];
    //rref matrix
    printf("Matrix before row reduction:\n");
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 6; j++) {
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }
}

int main() {
    int dataPoints[N][2] = {
        {0, -5},
        {2, 0},
        {-1, 0},
        {0, 1},
        {-3, -1},
        {5, -2},
        {0, 0},
        {0, 0}
    };
    int numberOfUsedPoints = 6;
    calculateEllipse(dataPoints, numberOfPoints);
    return 0;
}
