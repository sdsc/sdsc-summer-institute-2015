#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

int main (int argc, char *argv[]) 
{
int nthreads, tid;
int i, INTERVALS; 
double n_1, x, pi = 0.0; 

INTERVALS=1024000;

/* Fork a team of threads giving them their own copies of variables */
#pragma omp parallel private(nthreads, tid)
  {

  /* Obtain thread number */
  tid = omp_get_thread_num();
  printf("Hello from thread = %d\n", tid);

  /* Only master thread does this */
  if (tid == 0) 
    {
    nthreads = omp_get_num_threads();
    printf("Number of threads = %d\n", nthreads);
    }

  }  /* All threads join master thread and disband */

  n_1 = 1.0 / (double)INTERVALS; 

/* Parallel loop with reduction for calculating PI */  
#pragma omp parallel for private(i,x) shared(n_1,INTERVALS) reduction(+:pi) 
  for (i = 0; i < INTERVALS; i++)
    {
    x = n_1 * ((double)i  - 0.5);
    pi += 4.0 / (1.0 + x * x);
    }
    pi *= n_1; 
    printf ("Pi = %.12lf\n", pi); 
}
