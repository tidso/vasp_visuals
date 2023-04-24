#!/bin/bash

#SBATCH -N 4                          # number of nodes
#SBATCH --ntasks-per-node=8           # number of MPI processes per node
#SBATCH -t 0-08:00                    # time in d-hh:mm:ss

#SBATCH --mail-type=END,FAIL          # Send an e-mail when a job starts, stops, or fails
#SBATCH --mail-user=tidso@asu.edu     # Mail-to address

#SBATCH --output=myjob.out            # Redirect output to myjob.out
#SBATCH --error=myjob.err             # Redirect error to myjob.err
module purge
module load intel-mpi/5.0

srun --mpi=pmi2 /home/xpeng7/VASP5/VASP533/vasp.5.3/vasp