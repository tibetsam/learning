def rever_c(text):
    tail=text[-1]
    return (text[:-1][::-1] + tail)

print (rever_c('abcde\0').encode('utf-8'))
