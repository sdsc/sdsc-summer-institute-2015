import os

lines = []
for k,v in os.environ.iteritems(): 
    if k.startswith("SLURM"):
        lines.append('export {}="{}"'.format(k,v))
lines.append("export PYSPARK_DRIVER_PYTHON=ipython")
lines.append("source ~/mycluster.conf/spark/spark-env.sh")
lines.append("export PATH=/opt/hadoop/2.6.0/sbin:$PATH")
lines.append("export HADOOP_CONF_DIR=$HOME/mycluster.conf")
lines.append("export WORKDIR=`pwd`")
lines.append("export SPARK_MASTER_IP=$SLURMD_NODENAME")

with open("slurm-env.sh", "w") as f:
    f.write("\n".join(lines))
