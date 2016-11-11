import json
import urllib

url=raw_input('Enter location:')

html=urllib.urlopen(url)
print 'Retrieving',url
jcontent=html.read()
datas=json.loads(jcontent)
chars=len(jcontent)
counts=len(datas['comments'])
total=0
for data in datas['comments']:
    total=data['count']+total
print 'Retrived %s characters' % chars
print 'Count:',counts
print 'Sum',total




