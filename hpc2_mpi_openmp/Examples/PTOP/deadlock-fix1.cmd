#!/bin/bash
#PBS -q normal
#PBS -N deadlock-fix1
#PBS -l nodes=1:ppn=2:native
#PBS -l walltime=00:02:00
#PBS -o deadlock-fix1.out
#PBS -e deadlock-fix1.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 2 ./deadlock-fix1.exe
