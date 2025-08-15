#!/bin/bash
#SBATCH -J stereo4d_eval
#SBATCH -A uva_cv_lab
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --constraint=a6000|a40|a100|h200
#SBATCH --ntasks=1
#SBATCH --time=4:00:00
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G
#SBATCH --mail-type=ALL
#SBATCH --mail-user=tsx4zn@virginia.edu
#SBATCH --output=/scratch/tsx4zn/CityWalker/results/stereo4d_eval/logs/log.log
#SBATCH --error=/scratch/tsx4zn/CityWalker/results/stereo4d_eval/logs/error.log

cd /scratch/tsx4zn/CityWalker

python test.py --config config/stereo4d_eval.yaml
