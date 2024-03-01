#!/bin/sh

# sbatch --partition=uoa-compute ./sokoban.sh
# sbatch --partition=uoa-compute ./blocks-strips.sh
sbatch --partition=uoa-compute ./ma-sokoban.sh
# sbatch --partition=uoa-compute ./ma-blocks-strips.sh
