#!/bin/bash
#
#SBATCH --job-name=ccn1_2
#SBATCH --output=slurm_out/ccn1_qm9_2.out
#SBATCH --error=slurm_out/ccn1_qm9_2.err
#SBATCH --time=40:00:00
#SBATCH --nodes=2
#SBATCH --mem=250000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=ds5821@nyu.edu
#SBATCH --constraint=gpu_12gb

lr=0.0001
lrd=0.9
step=3
data_path='/misc/vlgscratch4/BrunaGroup/sulem/chem/data/processed/qm9.pickle'
epochs=20
L=20

python3 scripts/main_ccn_qm9.py --lr $lr --lrdamping $lrd --step $step --epochs $epochs --data_path $data_path --L $L

echo done
