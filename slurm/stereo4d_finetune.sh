#!/bin/bash
#SBATCH -J stereo4d_ft
#SBATCH -A dac_cheng
#SBATCH --partition=gpu
#SBATCH --gres=gpu:2
#SBATCH --constraint=a6000|a40|a100|h200
#SBATCH --ntasks=1
#SBATCH --time=48:00:00
#SBATCH --cpus-per-task=32
#SBATCH --mem=128G
#SBATCH --mail-type=ALL
#SBATCH --mail-user=tsx4zn@virginia.edu
#SBATCH --output=/scratch/tsx4zn/CityWalker/results/stereo4d_ft/logs/log.log
#SBATCH --error=/scratch/tsx4zn/CityWalker/results/stereo4d_ft/logs/error.log

cd /scratch/tsx4zn/CityWalker

python fine_tune.py --config config/stereo4d_finetune.yaml --checkpoint results/train_2000hr/checkpoiknts/CityWalker_2000hr.ckpt
