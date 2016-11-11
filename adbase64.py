import base64
def safe_base64_decode(s):
    if len(s)%4==0:
        return base64.b64decode(s)
    else:
        suffix=len(s)%4
        i=1
        while i <= suffix:
            s=s+'='.encode('utf-8')
            i=i+1
        return base64.b64decode(s)
    
assert b'abcd' == safe_base64_decode(b'YWJjZA=='), safe_base64_decode('YWJjZA==')
assert b'abcd' == safe_base64_decode(b'YWJjZA'), safe_base64_decode('YWJjZA')
print('Pass')

