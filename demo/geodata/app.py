import logging; logging.basicConfig(level=logging.INFO)

import asyncio, os, json, time
from datetime import datetime

from aiohttp import web

with open('where.html', 'rb') as f:
    where=f.read()
with open('where.js','rb') as wf:
    where_js=wf.read()

def index(request):
    return web.Response(body=where, content_type='text/html')

def js(request):
    return web.Response(body=where_js)

async def init(loop):
    app=web.Application(loop=loop)
    app.router.add_route('GET', '/', index)
    app.router.add_route('GET', '/where.js', js)
    srv= await loop.create_server(app.make_handler(),'127.0.0.1', 9000)
    logging.info('Server started at http://localhost:9000')
    return srv


loop=asyncio.get_event_loop()
loop.run_until_complete(init(loop))
loop.run_forever()

