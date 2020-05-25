predictionfile=outputs/simple_tagger_output.txt
outfname=outputs/simple_tagger_summary.txt
tgtfile=data/processed/multicopy.test.src.txt

# tune threshold to get equivalent summary length. # agg-ppl: 1867.28 words
python prediction_to_text.py -data $predictionfile \
                             -output $outfname \
                             -tgt $tgtfile \
                             -threshold 0.2 \
                             -divider "" \
                             -style sentences \
                             -prune 40000


python get-summary-stats.py