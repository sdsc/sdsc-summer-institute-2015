#!/bin/bash
#PBS -q normal
#PBS -N deadlock
#PBS -l nodes=1:ppn=2:native
#PBS -l walltime=00:02:00
#PBS -o deadlock.out
#PBS -e deadlock.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 2 ./deadlock.exe
