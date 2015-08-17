#!/bin/bash
#PBS -q normal
#PBS -N pi_mpi
#PBS -l nodes=1:ppn=16:native
#PBS -l walltime=00:20:00
#PBS -o pi_mpi.out
#PBS -e pi_mpi.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 16 ./pi_mpi.exe
