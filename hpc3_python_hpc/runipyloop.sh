for scale in 10 30 50 100 200 500
do
sed "s/SCALE/$scale/" slurm.serial.template | sbatch
done
