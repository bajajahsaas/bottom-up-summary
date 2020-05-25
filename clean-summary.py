import re


def preprocessSentence(str_):
    str_ = str_.replace("<t>", "")
    str_ = str_.replace("</t>", "")
    regex = re.compile('[*▪_\"\"•]')
    str_ = re.sub(regex, '', str_)
    str_ = str_.replace('\n', '').replace('\r', '')
    return str_


f = open('outputs/simple_tagger_summary.txt', 'r')
lines = f.read().split('\n')
newlines = []
print(len(lines))
print(lines[-1])
for l in lines:
    newlines.append(preprocessSentence(l))
f.close()

f = open('outputs/simple_tagger_summary_processed.txt', 'w')
f.write("\n".join(newlines))
f.close()
