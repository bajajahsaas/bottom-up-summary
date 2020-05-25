import numpy as np

f = open('outputs/simple_tagger_summary.txt', 'r')
lines = f.read().split('\n')
newlines = []
print('Num of Docs: ',len(lines))

lens = []
for l in lines:
    words = l.split()
    lens.append(len(words))
f.close()

print('Average number of words:', np.mean(lens))
