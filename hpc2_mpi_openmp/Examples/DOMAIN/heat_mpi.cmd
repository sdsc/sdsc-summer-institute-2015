#!/bin/bash
#PBS -q normal
#PBS -N heat_mpi
#PBS -l nodes=1:ppn=16:native
#PBS -l walltime=00:20:00
#PBS -o heat_mpi.out
#PBS -e heat_mpi.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 3 ./heat_mpi.exe
