#include <ap_int.h>

#define N	8

void ellipse_solver (ap_int<64> dataPoints[N],ap_int<32> matrix[5][6]) {

#pragma HLS INTERFACE mode=s_axilite port=return
//#pragma HLS INTERFACE mode=m_axi bundle=dataPoints port=dataPoints
//#pragma HLS INTERFACE mode=m_axi bundle=matrix port=matrix
#pragma HLS INTERFACE mode=bram port=dataPoints
#pragma HLS INTERFACE mode=bram port=matrix

	ap_int<32> dataHard[N][13] = {0};
#pragma HLS ARRAY_PARTITION variable=dataHard complete dim=1
#pragma HLS ARRAY_PARTITION variable=dataHard complete dim=2
	
	int outData[14] = {0};
#pragma HLS ARRAY_PARTITION variable=outData complete

	first_loop:for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE
		dataHard[i][0] = dataPoints[i].range(31,0); // x
		dataHard[i][1] = dataPoints[i].range(63,32); // y
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

	second_loop:for (int i = 0; i < 13; i++) {
#pragma HLS PIPELINE
		inner_second_loop:for (int j = 0; j < N; j++) {
			outData[i] += dataHard[j][i];
		}
	}
	outData[13] = N;

	//int matrix[5][6] = {0};
	
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
}
