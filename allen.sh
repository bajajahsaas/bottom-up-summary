#!/bin/bash
#
#SBATCH --job-name=allen
#SBATCH --output=logsallen/copy_%j.txt  # output file
#SBATCH -e logsallen/copy_%j.err        # File to which STDERR will be written
#SBATCH --gres=gpu:3
#SBATCH --partition=m40-short # Partition to submit to
#SBATCH --mem=40000
#
#SBATCH --ntasks=1


# python -m allennlp.run train  allennlp_config/elmo_tagger.json  --serialization-dir elmo_tagger

#python -m allennlp.run train  allennlp_config/elmo_tagger_crf.json  --serialization-dir elmo_tagger_crf

python -m allennlp.run train  allennlp_config/simple_tagger.json  --serialization-dir simple_tagger
