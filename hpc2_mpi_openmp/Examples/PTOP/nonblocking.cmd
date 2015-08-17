#!/bin/bash
#PBS -q normal
#PBS -N nonblocking
#PBS -l nodes=2:ppn=1:native
#PBS -l walltime=00:20:00
#PBS -o nonblocking.out
#PBS -e nonblocking.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 2 ./nonblocking.exe
