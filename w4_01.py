import urllib
from BeautifulSoup import *

url=raw_input('Enter Url:')
html=urllib.urlopen(url).read()
soup=BeautifulSoup(html)
tags=soup('span')
num_list=list()
count=0
for tag in tags:
    number=tag.contents[0]
    num_list.append(int(number))
    count=count+1

print count
print sum(num_list)
