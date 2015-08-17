#!/bin/bash
#PBS -q normal
#PBS -N allreduce
#PBS -l nodes=1:ppn=8:native
#PBS -l walltime=00:20:00
#PBS -o allreduce.out
#PBS -e allreduce.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 8 ./allreduce.exe
