from xml.parsers.expat import ParserCreate
from urllib import request,parse
import re



class Defaul_handle():
    def __init__(self):
        self.__counter=1
        self.__temperatur=str
        self.__date=str
        #self.__stack_level=[]
        self.__data_list=[]
        self.__weather_dict={}
        self.__select=('channel','yweather:condition','yweather:units','yweather:location','yweather:forecast','item')
    def start_element(self, name, attr):
        re_comp=re.compile(r'([MTWFS]\w\w)\,')
        if name in self.__select\
        and self.__counter>1:
            return
        if name in self.__select:
            #self.__stack_level.append(name)
            if attr != {}:
                for k,v in attr.items():
                    if k=='temperature':
                        self.__temperatur=v
                    if k=='day':
                        self.__data_list.append(attr)
                    

    def end_element(self, name):
        '''
        if self.__select and \
        name in self.__select and \
        name == self.__select[-1]:
            self.__stack_level.pop()
            '''
        if name =='channel':
            self.__counter=self.__counter+1
    def char_data(self,text):
        #print ('sssssssss')
        pass
    def get_value(self):
        mapping_dict={'Today':1,'Tomorrow':1,'day':1,'date':2,'looks':3,'high':4,'low':5}
        result_list=[]
        i=0
        while i<2:
            for k,v in self.__data_list[i].items():
                if k=='day' and i==0:
                    self.__data_list[i]['Today']=v
                    self.__data_list[i].pop(k)
                if k=='day' and i==1:
                    self.__data_list[i]['Tomorrow']=v
                    self.__data_list[i].pop(k)
            i=i+1
        if self.__temperatur=='F':
            for item in self.__data_list:
                item.pop('xmlns:yweather')
                item.pop('code')
                for k,v in item.items():
                    if k=='high' or k=='low':
                        item[k]=str((int(v)-32)*5//9)+'C'
                    if k=='text':
                        item['looks']=v
                        item.pop(k)
            for item in self.__data_list:
                #print ([item[i] for i in sorted(item)])
                print ([(k,item[k]) for k in sorted(item,key=mapping_dict.__getitem__)])
        return

def parse_weather(data):
    handler=Defaul_handle()
    ps=ParserCreate()
    ps.StartElementHandler = handler.start_element
    ps.EndElementHandler = handler.end_element
    ps.CharacterDataHandler = handler.char_data
    ps.Parse(data)
    weather=handler.get_value()
    '''
    for k,v in weather.items():
        if type(weather[k])==dict:
            for k1,v1 in weather[k].items():
                try:
                    weather[k][k1]=int(v1)
                except:
                    continue
        else:continue
    #print (weather)
    '''
    return

def fetch_xml():
    while True:
        address=input('Enter location:')
        if len(address)<0:break
        baseurl = "https://query.yahooapis.com/v1/public/yql?"
        yql_query = 'select * from weather.forecast where woeid in (select woeid from geo.places where text='
        yql_url = baseurl + parse.urlencode({'q':yql_query})+'%22'+address+'%22%29'
        print (yql_url)
        with request.urlopen(yql_url) as f:
            data=f.read()
            print ('Status:', f.status, f.reason)
#        print (f.getheaders())
            weather=parse_weather(data.decode('utf-8'))
    return str(weather)
fetch_xml()
'''
weather = parse_weather(data)
assert weather['city'] == 'Beijing', weather['city']
assert weather['country'] == 'China', weather['country']
assert weather['today']['text'] == 'Partly Cloudy', weather['today']['text']
assert weather['today']['low'] == 20, weather['today']['low']
assert weather['today']['high'] == 33, weather['today']['high']
assert weather['tomorrow']['text'] == 'Sunny', weather['tomorrow']['text']
assert weather['tomorrow']['low'] == 21, weather['tomorrow']['low']
assert weather['tomorrow']['high'] == 34, weather['tomorrow']['high']
print('Weather:', str(weather))
'''
