def space(text):
    n_text=[]
    for c in text:
        if c == ' ':c ='%20'
        n_text.append(c)
    return ''.join(n_text)


print (space('adfskl iii bbbi bbccc \n cccc ssss' ))

