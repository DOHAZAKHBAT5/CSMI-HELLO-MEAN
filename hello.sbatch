#!/bin/bash
#SBATCH --job-name=hello-course
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=1
#SBATCH --mem=256M
#SBATCH --time=00:02:00
#SBATCH --output=logs-%j.out
#SBATCH --error=logs-%j.err
set -euo pipefail
cd "$SLURM_SUBMIT_DIR"
srun hostname
printf 'Job %s completed its command\n' "$SLURM_JOB