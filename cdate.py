#!/usr/bin/python3
import re
from datetime import datetime, timezone, timedelta
def to_timestamp(dt_str, tz_str):
    lctime=datetime.strptime(dt_str, '%Y-%m-%d %H:%M:%S')
    dttime=re.match(r'UTC([\+\-]\d?\d):\d\d', tz_str).group(1)
    tz_local=timezone(timedelta(hours=int(dttime)))
    tz_time=lctime.replace(tzinfo=tz_local)
    return (tz_time.timestamp())
    
    
t1 = to_timestamp('2015-6-1 08:10:30', 'UTC+7:00')
assert t1 == 1433121030.0, t1
t2 = to_timestamp('2015-5-31 16:10:30', 'UTC-09:00')
assert t2 == 1433121030.0, t2

print('Pass')
	
