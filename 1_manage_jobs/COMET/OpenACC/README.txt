[1] Compile Code:
module unload intel
module load pgi
pgcc -o laplace2d.openacc.exe -fast -Minfo -acc laplace2d.c

Compiler output:
laplace:
     58, Generating copy(A[:][:])
         Generating create(Anew[:][:])
     63, Generating Tesla code
     64, Loop is parallelizable
     66, Loop is parallelizable
         Accelerator kernel generated
         64, #pragma acc loop gang /* blockIdx.y */
         66, #pragma acc loop gang, vector(128) /* blockIdx.x threadIdx.x */
         70, Max reduction generated for error
     74, Generating Tesla code
     75, Loop is parallelizable
     77, Loop is parallelizable
         Accelerator kernel generated
         75, #pragma acc loop gang /* blockIdx.y */
         77, #pragma acc loop gang, vector(128) /* blockIdx.x threadIdx.x */


[2] Submit job:
 sbatch openacc.sb 

[3] Output:

main()
Jacobi relaxation Calculation: 4096 x 4096 mesh
    0, 0.250000
  100, 0.002397
  200, 0.001204
  300, 0.000804
  400, 0.000603
  500, 0.000483
  600, 0.000403
  700, 0.000345
  800, 0.000302
  900, 0.000269
 total: 15.720975 s

[CPU version took 190s with 1 CPU]

