import hashlib
db={}    
def register():
    username=input('Username:')
    password=input('Password:')
    #global db
    h_password=password+username+'the-Salt'
    db[username]=hashlib.md5(h_password.encode('utf-8')).hexdigest()
    print ('Done!')
    return


def login():
    username=input('Username:')
    password=input('Password:')
    #global db
    h_password=password+username+'the-Salt'
    if db[username]==hashlib.md5(h_password.encode('utf-8')).hexdigest():
        print('Login correct!')
    else:
        print('Username or password is not correct!')
    return

register()
login()


