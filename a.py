'''
import socket

mysock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
mysock.connect(('cjnzkpumvpy9fxav.myfritz.net', 48771))
mysock.send('GET http://cjnzkpumvpy9fxav.myfritz.net HTTP/1.0\n\n')

while True:
    data = mysock.recv(512)
    if ( len(data) < 1 ) :
        break
    print data;

mysock.close()
from urllib import request
req = request.Request('http://www.douban.com/')
req.add_header('User-Agent', 'Mozilla/6.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/8.0 Mobile/10A5376e Safari/8536.25')
with request.urlopen(req) as f:
    print('Status:', f.status, f.reason)
    for k, v in f.getheaders():
        print('%s: %s' % (k, v))
    print('Data:', f.read().decode('utf-8'))

def singleton(cls, *args, **kw):
    instances = {}
    def getinstance(*args,**kw):
        if cls not in instances:
            instances[cls] = cls(*args, **kw)
        return instances[cls]
    return getinstance


@singleton
'''
class Singleton(object):
    def __new__(cls, *args, **kw):
        if not hasattr(cls, '_instance'):
            cls._instance = super(Singleton,cls).__new__(cls, *args, **kw)
        return cls._instance
class MyClass(Singleton):
    def __init__(self, number):
        self.number=number

a=MyClass(3)
#a.number=3
print (a.number)
b=MyClass(4)
#b.number=4
print (b.number)

print('<------------>')
print (a.number)
#a.number=5
print (b.number)

print (a.number)

