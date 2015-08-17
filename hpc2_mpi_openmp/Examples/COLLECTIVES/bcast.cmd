#!/bin/bash
#PBS -q normal
#PBS -N bcast
#PBS -l nodes=1:ppn=4:native
#PBS -l walltime=00:20:00
#PBS -o bcast.out
#PBS -e bcast.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 4 ./bcast.exe
