import re
def remove_spaces(x):
    return x.replace(' ', '')

def remove_punctuation(x):
    return re.sub(r'[^\w\s]','',x)