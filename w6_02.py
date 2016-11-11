import urllib
import json

def search(bingo,location):
    p='place_id'
    if type(bingo) is dict:
        try:
            try:
                if bingo['error']:return
            except:
                text=bingo[p]
                return text
        except:
            for k,v in bingo.items():   
                if type(v) is list:
                    search_list(v,location)
                else:
                    search(v,location)
def search_list(s_list,location):
    dupdict={}
    duplist=[]
    for item in s_list:
        if type(item) is dict:
            duplist.append(search(item,location))
        else:
            search_list(item,location)
    if len(duplist)>1:
        dupdict[location]=len(duplist)
        print dupdict

apiurl = 'http://python-data.dr-chuck.net/geojson?'

lolist=json.loads(urllib.urlopen(apiurl).read())
for lo in lolist:

#while True:
#    address = raw_input('Enter location: ')
#    if len(address) < 1 : break

    url=apiurl+urllib.urlencode({'sensor':'false','address':lo})
    #print url
    html=urllib.urlopen(url)
    #print 'Retrieving',url
    jcontent=html.read()
    #print 'Retrived %s characters' % len(jcontent)
    data=json.loads(jcontent)
    search(data,lo)



