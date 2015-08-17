#!/bin/bash
#PBS -q normal
#PBS -N heat_openmp
#PBS -l nodes=1:ppn=3:native
#PBS -l walltime=0:20:00
#PBS -o heat_openmp.out
#PBS -e heat_openmp.err
#PBS -V
##PBS -M youremail@xyz.edu
##PBS -m abe
#PBS -A gue998
cd $PBS_O_WORKDIR
export OMP_NUM_THREADS=3
./heat_openmp.exe
