python preprocess_copy.py -src train-src.txt -tgt train-tgt.txt -output data/processed/multicopy.train -prune 40000
python preprocess_copy.py -src dev-src.txt -tgt dev-tgt.txt -output data/processed/multicopy.val -prune 40000
python preprocess_copy.py -src test-src.txt -tgt test-tgt.txt -output data/processed/multicopy.test -prune 40000