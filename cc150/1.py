text=input('Enter string:')
'''
wlist={}
for word in text:
    if word not in wlist:
        wlist[word]=word
    else:
        wlist[word]='False'

for k,v in wlist.items():
    if v != 'False':
        print (k)
'''

