Content
=======
This directory contains the slides and exercises needed for the SDSC
2015 Summer Institute half-day workshop on GPU computing and programming.

Andreas Goetz, SDSC (agoetz@sdsc.edu)


How to use Comet's GPU nodes
============================

# Obtain interactive shared GPU node on SDSC Comet (one hour)
salloc -t 01:00:00 --res=si2015gpushared --gres=gpu:1 --nodes=1 \
 --ntasks-per-node=1 --partition=gpu-shared \
 srun --gres=gpu:1 --nodes=1 --ntasks-per-node=1  --pty --preserve-env $SHELL

# Load CUDA module, 
module load cuda

# Check nvcc compiler version
nvcc --version

# Check installed GPUs with NVIDIA System Management Interface (nvidia-smi)
# Check visible devices and set to free GPU if not necessary
nvidia-smi  # check output for any jobs running on GPUs
echo $CUDA_VISIBLE_DEVICES  # should be set by queuing system to free GPU
export CUDA_VISIBLE_DEVICES=x  # where x is free GPU (should already be set)


NVIDIA CUDA code samples
========================

# Copy and compile CUDA code samples that come with the CUDA Toolkit
cuda-install-samples-7.0.sh ./  # install into current directory
cd NVIDIA_CUDA-7.0_Samples
make

# Check out the many code samples
# Very instructive resource

# Run deviceQuery to query information on available GPUs
cd 1_Utilities/deviceQuery/
./deviceQuery


Simple code samples accompanying slides
=======================================

# See directory cuda-samples
# Compile with 
nvcc example.cu -o example.x
