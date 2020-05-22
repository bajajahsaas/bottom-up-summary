predictionfile=simple_tagger_output.txt
outfname=simple_tagger_summary.txt
tgtfile=data/processed/multicopy.test.src.txt

python prediction_to_text.py -data $predictionfile \
                             -output $outfname \
                             -tgt $tgtfile \
                             -threshold 0.25 \
                             -divider "" \
                             -style sentences \
                             -prune 40000