#!/bin/bash
#PBS -q normal
#PBS -N hello_native
#PBS -l nodes=4:ppn=1:native
#PBS -l walltime=0:10:00
#PBS -o hello_native.out
#PBS -e hello_native.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 4 ./hello_world
