#include "fitzgibbon.h"
#include <algorithm>
#include <iostream> 

#define MAX_SIZE 128
#define MAX_SIZE2 256 // N*2


template <typename T>
void print_matrix(T A[3][3], int rows, int cols, const char* name) {
    std::cout << name << ": " << std::endl;
    for (int i = 0; i < rows; ++i) {
        std::cout << "[ ";
        for (int j = 0; j < cols; ++j) {
            std::cout << A[i][j] << " ";
        }
        std::cout << "]" << std::endl;
    }
}

template <typename T>
void print_matrix(T A[3][MAX_SIZE], int rows, int cols, const char* name) {
    std::cout << name << ": " << std::endl;
    for (int i = 0; i < rows; ++i) {
        std::cout << "[ ";
        for (int j = 0; j < cols; ++j) {
            std::cout << A[i][j] << " ";
        }
        std::cout << "]" << std::endl;
    }
}

template <typename T> T sqrt(T number) {
    float error = 0.00001; //define the precision of your result
    float s = number;

    while ((s - number / s) > error) { //loop until precision satisfied
        s = (s + number / s) / 2;
    }

    return s;
}

template <typename T>
void kernel_matrix_multiply(T a[3][3], T b[3][3], T out[3][3]) {
    for (int m = 0; m < 3; ++m) {
        for (int n = 0; n < 3; ++n) {
            T sum = 0;
            for (int k = 0; k < 3; ++k) {
                sum += a[m][k] * b[k][n];
            }
            out[m][n] = sum;
        }
    }
}

template <typename T>
void kernel_matrix_multiply_general(T a[3][MAX_SIZE], T b[MAX_SIZE][3], T out[3][3], int a_rows, int a_cols, int b_cols) {
    for (int i = 0; i < a_rows; ++i) {
        for (int j = 0; j < b_cols; ++j) {
            T sum = 0;
            for (int k = 0; k < a_cols; ++k) {
                sum += a[i][k] * b[k][j];
            }
            out[i][j] = sum;
        }
    }
}



template <typename T>
void kernel_matrix_transpose_general(T src[MAX_SIZE][3], T dst[3][MAX_SIZE], int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            dst[j][i] = src[i][j];
        }
    }
}

template <typename T>
void kernel_matrix_transpose(T src[3][3], T dst[3][3], int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            dst[j][i] = src[i][j];
        }
    }
}


template <typename T>
void kernel_matrix_inverse(T A[3][3], T A_inv[3][3], int n) {

    T temp[3][3];

    // Initialize A_inv as an identity matrix and temp as a copy of A
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            A_inv[i][j] = (i == j) ? 1 : 0;
            temp[i][j] = A[i][j];
        }
    }

    // Perform Gauss-Jordan Elimination
    for (int i = 0; i < n; i++) {
        // Find the reciprocal of the diagonal element
        T diag_reciprocal = 1 / temp[i][i];

        for (int j = 0; j < n; j++) {
            temp[i][j] *= diag_reciprocal;
            A_inv[i][j] *= diag_reciprocal;
        }

        // Eliminate off-diagonal elements
        for (int k = 0; k < n; k++) {
            if (k != i) {
                T factor = temp[k][i];
                for (int j = 0; j < n; j++) {
                    temp[k][j] -= factor * temp[i][j];
                    A_inv[k][j] -= factor * A_inv[i][j];
                }
            }
        }
    }
}


// // Usage:
// // Allocate and initialize A, Q, R matrices with dimensions [m][n] and [n][n] respectively
// // Call gram_schmidt(A, m, n, Q, R)
// template <typename T>
// void kernel_gram_schmidt(T A[3][3], int m, int n, T Q[3][3], T R[3][3]) {
//     // Initialize Q and R to zero
//     for (int i = 0; i < m; ++i) {
//         for (int j = 0; j < n; ++j) {
//             Q[i][j] = 0;
//             R[i][j] = 0;
//         }
//     }

//     for (int j = 0; j < n; ++j) {
//         T v[3];
//         for (int i = 0; i < m; ++i) {
//             v[i] = A[i][j];
//         }
//         for (int i = 0; i < j; ++i) {
//             R[i][j] = 0;
//             for (int k = 0; k < m; ++k) {
//                 R[i][j] += Q[k][i] * A[k][j];
//             }
//             for (int k = 0; k < m; ++k) {
//                 v[k] -= R[i][j] * Q[k][i];
//             }
//         }
//         R[j][j] = 0;
//         for (int i = 0; i < m; ++i) {
//             R[j][j] += v[i] * v[i];
//         }
//         T norm_v = 0;
//         for (int i = 0; i < m; ++i) {
//             norm_v += v[i] * v[i];
//         }
//         norm_v = sqrt(norm_v);
//         for (int i = 0; i < m; ++i) {
//             Q[i][j] = v[i] / norm_v;
//         }
//     }
// }
// template <typename T>
// void kernel_gram_schmidt(T A[3][3], int m, int n, T Q[3][3], T R[3][3]) {
//     // Initialize Q and R to zero
//     for (int i = 0; i < m; ++i) {
//         for (int j = 0; j < n; ++j) {
//             Q[i][j] = 0;
//             R[i][j] = 0;
//         }
//     }

//     for (int j = 0; j < n; ++j) {
//         T v[3];
//         // Copy the j-th column of A into v
//         for (int i = 0; i < m; ++i) {
//             v[i] = A[i][j];
//         }

//         // Modified Gram-Schmidt process
//         for (int i = 0; i < j; ++i) {
//             R[i][j] = 0;
//             for (int k = 0; k < m; ++k) {
//                 R[i][j] += Q[k][i] * v[k];
//             }
//             for (int k = 0; k < m; ++k) {
//                 v[k] -= R[i][j] * Q[k][i];
//             }
//         }

//         // Compute the norm of v
//         T norm_v = 0;
//         for (int i = 0; i < m; ++i) {
//             norm_v += v[i] * v[i];
//         }
//         norm_v = sqrt(norm_v);

//         // Check for zero (or very small) norm to avoid division by zero
//         if (norm_v > 1e-10) { // A small threshold to account for floating-point errors
//             for (int i = 0; i < m; ++i) {
//                 Q[i][j] = v[i] / norm_v;
//             }
//             R[j][j] = norm_v;
//         } else {
//             // Handle the zero or near-zero norm case
//             for (int i = 0; i < m; ++i) {
//                 Q[i][j] = 0;
//             }
//             R[j][j] = 0;
//         }
//     }
// }

// Usage:
// Define and initialize A matrix with dimensions [MAX_SIZE][MAX_SIZE]
// Define eigenvectors and eigenvalues matrices with dimensions [MAX_SIZE][MAX_SIZE]
// Call qr_algorithm(A, n, eigenvectors, eigenvalues)
// template <typename T>
// void kernel_qr_algorithm(T A[3][3], int n, T eigenvectors[3][3], T eigenvalues[3][3], int max_iter) {
//         // Initialize eigenvectors to the identity matrix
//     for (int i = 0; i < n; ++i) {
//         for (int j = 0; j < n; ++j) {
//             eigenvectors[i][j] = (i == j) ? 1 : 0;
//         }
//     }

//     for (int k = 0; k < max_iter; ++k) { // max_iter for maximum number of iterations
//         T Q[3][3];
//         T R[3][3];
//         kernel_gram_schmidt<T>(A, n, n, Q, R);
//         T tempA[3][3];
//         for (int i = 0; i < n; ++i) {
//             for (int j = 0; j < n; ++j) {
//                 tempA[i][j] = 0;
//                 for (int h = 0; h < n; ++h) {
//                     tempA[i][j] += Q[i][h] * R[h][j];
//                 }
//             }
//         }
//         for (int i = 0; i < n; ++i) {
//             for (int j = 0; j < n; ++j) {
//                 A[i][j] = tempA[i][j];
//             }
//         }
//         T tempV[3][3];
//         for (int i = 0; i < n; ++i) {
//             for (int j = 0; j < n; ++j) {
//                 tempV[i][j] = 0;
//                 for (int k = 0; k < n; ++k) {
//                     tempV[i][j] += eigenvectors[i][k] * Q[k][j];
//                 }
//             }
//         }
//         for (int i = 0; i < n; ++i) {
//             for (int j = 0; j < n; ++j) {
//                 eigenvectors[i][j] = tempV[i][j];
//             }
//         }
//     }

//     for (int i = 0; i < n; ++i) {
//         for (int j = 0; j < n; ++j) {
//             eigenvalues[i][j] = (i == j) ? A[i][j] : 0;
//         }
//     }
// }
//
// template <typename T>
// void kernel_qr_algorithm(T A[3][3], int n, T eigenvectors[3][3], T eigenvalues[3][3], int max_iter) {
//     T Q[3][3];
//     T R[3][3];

//     // Initialize eigenvectors to the identity matrix
//     for (int i = 0; i < n; ++i) {
//         for (int j = 0; j < n; ++j) {
//             eigenvectors[i][j] = (i == j) ? 1 : 0;
//         }
//     }

//     for (int iter = 0; iter < max_iter; ++iter) {
//         kernel_gram_schmidt(A, n, n, Q, R);

//         // Multiply R and Q to get the new A
//         T tempA[3][3] = {0};
//         for (int i = 0; i < n; ++i) {
//             for (int j = 0; j < n; ++j) {
//                 for (int k = 0; k < n; ++k) {
//                     tempA[i][j] += Q[i][k] * R[k][j];
//                 }
//             }
//         }

//         // Update A with the new values
//         std::copy(&tempA[0][0], &tempA[0][0] + 3*3, &A[0][0]);

//         // Update eigenvectors
//         T tempV[3][3] = {0};
//         for (int i = 0; i < n; ++i) {
//             for (int j = 0; j < n; ++j) {
//                 for (int k = 0; k < n; ++k) {
//                     tempV[i][j] += eigenvectors[i][k] * Q[k][j];
//                 }
//             }
//         }

//         // Update eigenvectors with the new values
//         std::copy(&tempV[0][0], &tempV[0][0] + 3*3, &eigenvectors[0][0]);
//     }

//     // Extract the eigenvalues from the diagonal of A
//     for (int i = 0; i < n; ++i) {
//         eigenvalues[i][i] = A[i][i];
//         for (int j = 0; j < n; ++j) {
//             if (i != j) {
//                 eigenvalues[i][j] = 0;
//             }
//         }
//     }
// }

template <typename T>
void gaussianElimination(T mat[3][3], T result[3]) {
    // Forward elimination
    for (int k = 0; k < 2; ++k) {
        // Find the row with the maximum element in the current column
        int maxRow = k;
        for (int i = k + 1; i < 3; ++i) {
            if (std::abs(mat[i][k]) > std::abs(mat[maxRow][k])) {
                maxRow = i;
            }
        }

        // Check for zero pivot
        if (std::abs(mat[maxRow][k]) < 1e-7) {  
            std::cerr << "Zero pivot encountered at row " << maxRow << " and column " << k << std::endl;
            return;
        }

        // Swap the rows
        for (int i = 0; i < 3; ++i) {
            std::swap(mat[k][i], mat[maxRow][i]);
        }

        // Eliminate
        for (int i = k + 1; i < 3; ++i) {
            T factor = mat[i][k] / mat[k][k];
            for (int j = k; j < 3; ++j) {
                mat[i][j] -= factor * mat[k][j];
            }
        }
    }

    // Back substitution
    for (int i = 2; i >= 0; --i) {
        // Check if the diagonal element is zero
        if (std::abs(mat[i][i]) < 1e-7) {
            std::cerr << "Zero or nearly zero diagonal element at row " << i << std::endl;
            result[i] = 0; // Adjust according to your context
            continue;
        }

        result[i] = mat[i][2];
        for (int j = i + 1; j < 3; ++j) {
            result[i] -= mat[i][j] * result[j];
        }
        result[i] /= mat[i][i];
    }
}

template <typename T>
void findEigenvectors(T A[3][3], T eigenvalues[3], T eigenvectors[3][3]) {
    for (int i = 0; i < 3; ++i) {
        T lambda = eigenvalues[i];
        T mat[3][3];

        // Construct (A - lambda * I)
        for (int j = 0; j < 3; ++j) {
            for (int k = 0; k < 3; ++k) {
                mat[j][k] = A[j][k] - (j == k ? lambda : 0);
            }
        }
        print_matrix(mat, 3,3, "mat before ge");
        // Solve (A - lambda * I) * x = 0 for x
        T eigenvector[3];
        gaussianElimination(mat, eigenvector);

        // Store the eigenvector
        for (int j = 0; j < 3; ++j) {
            eigenvectors[j][i] = eigenvector[j];
        }
    }
}

// Usage:
// Define and initialize x and y arrays with data points
// Define M to hold the results
// Call fitz(x, y, size, a, M, M_rearranged)
template <typename T>
void fitz(T x[MAX_SIZE], T y[MAX_SIZE], T M[3][3], T evec[3][3]) {
    T D1[MAX_SIZE][3], D2[MAX_SIZE][3];
    T S1[3][3], S2[3][3], S3[3][3];
    T T_[3][3];
    T eval[3];
    T M_rearranged[3][3];
    T C_[3][3];

    // Fill D1 and D2 with the appropriate values
    for (int i = 0; i < MAX_SIZE; ++i) {
        D1[i][0] = x[i] * x[i]; // x squared
        D1[i][1] = x[i] * y[i]; // x times y
        D1[i][2] = y[i] * y[i]; // y squared

        D2[i][0] = x[i];
        D2[i][1] = y[i];
        D2[i][2] = 1;
    }
    // print_matrix<DataType>(D1, MAX_SIZE, 3, "D1");
    // print_matrix<DataType>(D2, MAX_SIZE, 3, "D2");

    // Perform matrix multiplications to compute S1, S2, S3
    T D1_T[3][MAX_SIZE];
    T D2_T[3][MAX_SIZE];

    // Transpose D1 and D2
    kernel_matrix_transpose_general<DataType>(D1, D1_T, MAX_SIZE, 3);
    kernel_matrix_transpose_general<DataType>(D2, D2_T, MAX_SIZE, 3);

    // Multiply transposed and original matrices
    kernel_matrix_multiply_general<DataType>(D1_T, D1, S1, 3, MAX_SIZE, 3);
    kernel_matrix_multiply_general<DataType>(D1_T, D2, S2, 3, MAX_SIZE, 3);
    kernel_matrix_multiply_general<DataType>(D2_T, D2, S3, 3, MAX_SIZE, 3);

    // Invert S3 and compute T
    T S3_inv[3][3];
    kernel_matrix_inverse<DataType>(S3, S3_inv, 3);
    T S2_T[3][3];
    kernel_matrix_transpose<DataType>(S2, S2_T, 3, 3);
    kernel_matrix_multiply<DataType>(S3_inv, S2_T, T_);
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            T_[i][j] = -T_[i][j]; // Negate the matrix T
        }
    }
    print_matrix<DataType>(S1, 3, 3, "S1");
    print_matrix<DataType>(S2, 3, 3, "S2");
    print_matrix<DataType>(S3, 3, 3, "S3");
    print_matrix<DataType>(T_, 3, 3, "T_");

    // Compute M matrix
    T S2_T_Temp[3][3];
    kernel_matrix_multiply<DataType>(S2, T_, S2_T_Temp);
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            M[i][j] = S1[i][j] + S2_T_Temp[i][j];
        }
    }
    
    T C[3][3] = {{0, 0, 2}, {0, -1, 0}, {2, 0, 0}};
    kernel_matrix_inverse<DataType>(C, C, 3);
    kernel_matrix_multiply<DataType>(C, M, M_rearranged);
    print_matrix<DataType>(M_rearranged, 3, 3, "M_rearranged");

    // Call the QR algorithm to find eigenvectors and eigenvaluen
    /* kernel_qr_algorithm<DataType>(M_rearranged, 3, evec, eval, 3); */
    findEigenvectors<DataType>(M_rearranged, eval, evec);
    print_matrix<DataType>(evec, 3, 3, "evec");
    for(int i = 0; i < 3; i++) {
        std::cout << "eval[" << i << "]: " << eval[i] << std::endl;
    }
}

int main() {
  DataType point_cloud[MAX_SIZE][2];
  DataType xs[MAX_SIZE];
  DataType ys[MAX_SIZE];
  DataType M[3][3];
  DataType evec[3][3];
  
  // Initialize point_cloud with data points from csv file named 'ellipse.csv'
  // Read the csv file into a 2D array
  std::ifstream csv_file("ellipse.csv");
  std::string line;
  int row = 0;
  while (std::getline(csv_file, line) && row < MAX_SIZE) {
    std::stringstream lineStream(line);
    std::string cell;
    int col = 0;
    while (std::getline(lineStream, cell, ',') && col < 2) {
        try {
            point_cloud[row][col] = std::stof(cell);
        } catch (const std::invalid_argument& e) {
            std::cerr << "Error converting string to float at row " << row << ", col " << col << ": " << cell << std::endl;
            return 1; // or handle the error as appropriate
        }
        col++;
    }
    if (col != 2) {
        std::cerr << "Incorrect number of columns at row " << row << std::endl;
        return 1; // or handle as appropriate
    }
    row++;
}


  // Extract the x and y values from the point cloud
  for (int i = 0; i < MAX_SIZE; ++i) {
      xs[i] = point_cloud[i][0];
      ys[i] = point_cloud[i][1];
  }

  // Call the fitz function

  fitz<DataType>(xs, ys, M, evec);

// // print evec container
//  std::cout << "evec: " << std::endl;
//  for (int i = 0; i < 3; ++i) {
//      for (int j = 0; j < 3; ++j) {
//          std::cout << evec[i][j] << " ";
//      }
//      std::cout << std::endl;
//  }

//  std::cout << "M: " << std::endl;
//  for (int i = 0; i < 3; ++i) {
//      for (int j = 0; j < 3; ++j) {
//          std::cout << M[i][j] << " ";
//      }
//      std::cout << std::endl;
//  }

  return 0;

}
