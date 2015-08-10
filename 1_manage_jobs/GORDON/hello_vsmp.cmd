#!/bin/bash
#PBS -q vsmp
#PBS -N hello_vsmp
#PBS -l nodes=1:ppn=16:vsmp
#PBS -l walltime=0:10:00
#PBS -o hello_vsmp.out
#PBS -e hello_vsmp.err
#PBS -V
##PBS -M youremail@xyz.edu
##PBS -m abe
#PBS -A gue998
cd $PBS_O_WORKDIR
export LD_PRELOAD=/opt/ScaleMP/libvsmpclib/0.1/lib64/libvsmpclib.so
export PATH="/opt/ScaleMP/numabind/bin:$PATH"
export KMP_AFFINITY=compact,verbose,0,`numabind --offset 8`
export OMP_NUM_THREADS=8
./hello_vsmp
