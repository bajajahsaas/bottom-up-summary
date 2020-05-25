modelfile=elmo_tagger_crf/model.tar.gz
datafile=data/processed/multicopy.test.pred.txt
outputfile=outputs/elmo_tagger_crf_output.txt

python -m allennlp.run predict $modelfile $datafile --output $outputfile --cuda-device -1 --batch-size 50