def consumer():
    i = ''
    while True:
        b = yield i
        if not b:
            return
        print('[CONSUMER] Consuming %s...' % b)
        r = '200 OK'
def produce(c):
    c.send(None)
    n = 0
    while n < 5:
        n = n + 1
        print('[PRODUCER] Producing %s...' % n)
        r = c.send(n)
        print('[PRODUCER] Consumer return: %s' % r)
    c.close()
c = consumer()
produce(c)

