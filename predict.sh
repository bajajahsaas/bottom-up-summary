modelfile=simple_tagger/model.tar.gz
datafile=data/processed/multicopy.test.pred.txt
outputfile=outputs/simple_tagger_output.txt

python -m allennlp.run predict $modelfile $datafile --output $outputfile --cuda-device -1 --batch-size 50