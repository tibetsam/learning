import urllib
from BeautifulSoup import *
import time
begin=time.time()
url=raw_input('Enter URL:')
counter=raw_input('Enter counter:')
counter=int(counter)
position=raw_input('Enter position:')
position=int(position)
def href_func(url,position,counter):
    if counter==0:
        return
    html=urllib.urlopen(url).read()
    soup=BeautifulSoup(html)
    tags=soup('a')
    href_list=list()
    for tag in tags:
        href=tag.get('href',None)
        href_list.append(href)
    print 'Retrieving: %s' % href_list[position]
    href_func(href_list[position],position,counter-1)
href_func(url,position-1,counter)
end=time.time()
print (end-begin)

