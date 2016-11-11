import os
from urllib import request
from html.parser import HTMLParser
from html.entities import name2codepoint
import re

class htmlpaser(HTMLParser):
    def __init__(self,*arg):
        super().__init__()
    def reset(self):
        super().reset()
        self._attr=[]
    def handle_starttag(self,tag, attrs):
        if tag == 'a':
            self._attr.append(attrs[0][1])
    def handle_data(self, data):
        pass
    def handle_endtag(self, tag):
        pass
    def result(self):
        return self._attr[5:]

baseurl='http://www.pythonlearn.com/code/'


req=request.Request(baseurl)
req.add_header('Origin',baseurl)
req.add_header('User-Agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36')

with request.urlopen(req) as f:
    print(f.status,f.reason)
    date=f.read()

paser=htmlpaser()
paser.feed(date.decode('utf-8'))

path=os.path.abspath('.')
newpath=os.path.join(path,'demo')
try:
    os.mkdir(newpath)
except:
    pass
links=paser.result()
re_path=re.compile(r'.*\/$')
for link in links:
    if re_path.match(link):continue
    full_url=baseurl + '/' + link
    req=request.Request(full_url)
    req.add_header('Origin',baseurl)
    req.add_header('User-Agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36')

    with request.urlopen(req) as f:
        py=f.read()
        with open(os.path.join(newpath,link),'wb') as f:
            f.write(py)
    print ('added', link)

