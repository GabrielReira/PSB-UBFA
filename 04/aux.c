#include <stdio.h>
#include <math.h>

double arithmetic_mean(int n1, int n2, int n3) {
  double mean = (n1 + n2 + n3) / 3.0;
  return mean;
}

double geometric_mean(int n1, int n2, int n3) {
  double mean = pow(n1 * n2 * n3, 1.0/3.0);
  return mean;
}

double harmonic_mean(int n1, int n2, int n3) {
  double mean = (3.0) / (1.0/n1 + 1.0/n2 + 1.0/n3);
  return mean;
}
