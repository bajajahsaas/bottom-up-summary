#!/bin/bash
#
#SBATCH --job-name=cls-amicus
#SBATCH --output=logsallen/allen_%j.txt  # output file
#SBATCH -e logsallen/allen_%j.err        # File to which STDERR will be written
#SBATCH --gres=gpu:1
#SBATCH --partition=2080ti-long # Partition to submit to
#SBATCH --mem=40000
#
#SBATCH --ntasks=1

modelfile=simple_tagger/model.tar.gz
datafile=data/processed/multicopy.test.pred.txt
outputfile=outputs/simple_tagger_output.txt

python -m allennlp.run predict $modelfile $datafile --output $outputfile --cuda-device 0 --batch-size 50