#!/bin/bash
#PBS -q normal
#PBS -N blocking
#PBS -l nodes=2:ppn=1:native
#PBS -l walltime=00:20:00
#PBS -o blocking.out
#PBS -e blocking.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 2 ./blocking.exe
