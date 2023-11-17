#ifndef _FITZ_
#define _FITZ_

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>
#include <iostream>
#include <sstream>
#include <fstream>


#define MAX_SIZE 128
#define MAX_SIZE2 256 // N*2

#define DWIDTH 512

typedef float DataType;

const int DataTypeSize = sizeof(DataType) * 8;

typedef union converter {
  DataType d;
  uint32_t i;
} converter_t;

template <typename T> T sqrt(T number);
template <typename T> void kernel_matrix_multiply(T a[3][3], T b[3][3], T out[3][3]);
template <typename T> void kernel_matrix_multiply_general(T a[3][MAX_SIZE], T b[MAX_SIZE][3], T out[3][3], int a_rows, int a_cols, int b_cols);
template <typename T> void kernel_matrix_transpose_general(T src[MAX_SIZE][3], T dst[3][MAX_SIZE], int rows, int cols);
template <typename T> void kernel_matrix_transpose(T src[3][3], T dst[3][3], int rows, int cols);
template <typename T> void kernel_matrix_inverse(T A[3][3], T A_inv[3][3], int n);
template <typename T> void kernel_gram_schmidt(T A[3][3], int m, int n, T Q[3][3], T R[3][3]);
template <typename T> void kernel_qr_algorithm(T A[3][3], int n, T eigenvectors[3][3], T eigenvalues[3][3], int max_iter);
template <typename T> void fitz(T x[MAX_SIZE], T y[MAX_SIZE], T M[3][3], T evec[3][3]);
template <typename T> void print_matrix(T A[3][3], int rows, int cols, const char* name);
template <typename T> void print_matrix(T A[3][MAX_SIZE], int rows, int cols, const char* name);
template <typename T> void gaussianElimination(T mat[3][3], T result[3]); 
template <typename T> void findEigenvectors(T A[3][3], T eigenvalues[3], T eigenvectors[3][3]); 
#endif

