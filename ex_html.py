#from urllib import request
import urllib
from BeautifulSoup import *
#from html.parser import HTMLParser
#from html.entities import name2codepoint
#import re

#url=input('Enter URL:')
url='https://www.python.org/events/python-events/'
#web_page=request.urlopen(url).read()
web_page=urllib.urlopen(url).read()

soup=BeautifulSoup(web_page)
titles=soup('time')
print (titles)
'''
clist=[]
for title in titles:
        print(str(title.contents[0].contents[0])) 
        print title.findNext('time').contents[0]
        print title.findNext('time').contents[0].next.contents[0]
        print title.findNext(attrs={"class" : "event-location"}).contents[0]
        #print BeautifulStoneSoup(title.findNext('time').contents[0],convertEntities=BeautifulStoneSoup.ALL_ENTITIES).contents[0]
        #print nextSibling.contents[0]
'''
'''
class weather_parser(HTMLParser):
    intrestedtag=('li','p','time','h3','span','a')
    def __init__(self,*arg):
        super().__init__()
        pass
    def reset(self):
        super().reset()
        self.__attr_level=[]
        self.__data_dict={}
        self.__data_list=[]
    def handle_starttag(self,tag, attrs):
        if tag in self.intrestedtag:
            self.__attr_level.append(tag)
    def handle_data(self, data):
        if '/'.join(self.__attr_level) in ('li/a','li/h3/a', 'li/p/time','li/p/time/span','li/p/span'):
            if '/'.join(self.__attr_level) == 'li/h3/a':
                self.__data_dict[data]=self.__data_list
            if '/'.join(self.__attr_level) == 'li/p/time':
                self.__data_list.append(data)
            if '/'.join(self.__attr_level) == 'li/p/time/span':
                self.__data_list.append(data)
            if '/'.join(self.__attr_level) == 'li/p/span':
                self.__data_list.append(data)
            print (data)
    def handle_endtag(self, tag):
        if self.__attr_level \
        and tag in self.intrestedtag\
        and tag ==self.__attr_level[-1]:
            self.__attr_level.pop()
            if self.__attr_level==[]:
                self.__data_list=[]
    def rprint(self):
        print (self.__data_dict)
paser=weather_parser()
paser.feed(web_page.decode('utf-8'))
#paser.feed(data)
paser.rprint()
'''
