import urllib
import xml.etree.ElementTree as ET

url=raw_input('Enter URL:')

xfile=urllib.urlopen(url).read()
print 'Retriving', url
print 'Retrived', len(xfile),'characters'
trees=ET.fromstring(xfile)

comments=trees.findall('comments/comment')
print 'Count:', len(comments)
total=0
for comment in comments:
    number=int(comment.find('count').text)
    total=total+number
print 'Sum:', total


