# f = open('outputs/elmo_tagger_crf_output.txt', 'r')
# lines = f.read().split('\n')
# print('Num of Docs: ',len(lines))
# f.close()
# print(lines[0])
#
# f = open('outputs/elmo_tagger_crf_out.txt', 'w')
# f.write(lines[0])
# f.close()

import codecs
import json
from scipy.special import softmax

resfile = codecs.open("outputs/simple_tagger_out.txt", 'r')
threshold = 0.25
for ix, line in enumerate(resfile):
    cline = json.loads(line)
    words = cline['words']
    print("len words", len(words))
    print('logits', (cline['logits'][:len(words)]))
    print('class_prob', (cline['class_probabilities'][:len(words)]))

    logits = [p for p in cline['logits'][:len(words)]]
    prob_from_logits = []
    for log in logits:
        probs = softmax(log)
        prob_from_logits.append(probs[1])

    probs = [p[1] for p in cline['class_probabilities'][:len(words)]]
    print(probs)
    print(prob_from_logits)
    tags = [1 if p > threshold else 0 for p in probs]