from html.parser import HTMLParser
from html.entities import name2codepoint
from html import unescape
#from urllib import request

data=r'''
                    <li>
                        <h3 class="event-title"><a href="/events/python-events/433/">PyCon DE 2016</a></h3>
                        <p>
                            
                            
<time datetime="2016-10-28T00:00:00+00:00">28 Oct. &ndash; 30 Oct. <span class="say-no-more"> 2016</span></time>

                            

                            
                            <span class="event-location">Leonardo Royal Hotel Munich, Moosacher Str. 90, 80809 Mü, Germany</span
                            
                        </p>
                    </li>
                
                    <li>
                        <h3 class="event-title"><a href="/events/python-events/416/">PyCon CZ 2016</a></h3>
                        <p>
                            
                            
<time datetime="2016-10-28T00:00:00+00:00">28 Oct. &ndash; 31 Oct. <span class="say-no-more"> 2016</span></time>

                            

                            
                            <span class="event-location">Brno, Czech Republic</span>
                            
                        </p>
                    </li>
                
                    <li>
                        <h3 class="event-title"><a href="/events/python-events/443/">PyCon HK 2016</a></h3>
                        <p>
                            
                            
<time datetime="2016-10-29T00:00:00+00:00">29 Oct. &ndash; 31 Oct. <span class="say-no-more"> 2016</span></time>

                            

                            
                            <span class="event-location">Hong Kong Cyberport, Hong Kong</span>
                            
                        </p>
                    </li>
'''


class MyHTMLParser(HTMLParser):
    selected = ('h3','span', 'time','li','p','a')
    def reset(self):
        HTMLParser.reset(self)
        self._level_stack = []
    def handle_starttag(self, tag, attrs):
        if tag in MyHTMLParser.selected:
            self._level_stack.append(tag)
    def handle_endtag(self, tag):
        if self._level_stack \
        and tag in MyHTMLParser.selected \
        and tag == self._level_stack[-1]:
            self._level_stack.pop()
    def handle_data(self, data):
        if "/".join(self._level_stack) in ('li/h3/a','li/p/time','li/p/time/span','li/p/span'):
            print (self._level_stack, data)                   
    def handle_comment(self, data):
        pass
    def handle_entityref(self, name):
        print (name)
        print('entityref----->&%s;' % name)
    def handle_charref(self, name):
        print('charref------->&#%s;' % name)
parser = MyHTMLParser(convert_charrefs=True)

url='https://www.python.org/events/python-events/'

#web_page=request.urlopen(url).read()
parser.feed(data)

