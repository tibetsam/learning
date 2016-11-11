class Field(object):
    def __init__(self, name, column_type,primary_key):
        self.name = name
        self.column_type = column_type
        self.primary_key=primary_key
    def __str__(self):
        return '<%s:%s>' % (self.__class__.__name__, self.name)

class StringField(Field):
    def __init__(self, name,primary_key=False):
        super(StringField, self).__init__(name, 'varchar(100)', primary_key)
class IntegerField(Field):
    def __init__(self, name,primary_key=False):
        super(IntegerField, self).__init__(name, 'bigint', primary_key)


class ModelMetaclass(type):
    def __new__(cls, name, bases, attrs):
        if name=='Model':
            return type.__new__(cls, name, bases, attrs)
        print('Found model: %s' % name)
        fields = []
        mappings = dict()
        primaryKey=None
        print (cls,'<-->',name,'<-->',bases,'<-->',attrs)
        for k, v in attrs.items():
            if isinstance(v, Field):
                print('Found mapping: %s ==> %s' % (k, v))
                mappings[k] = v
                if v.primary_key:
                    if primaryKey:
                        raise StandardError('Duplicate primary key for field: %s' % k)
                    primaryKey = k
                else:
                    fields.append(k)
        if not primaryKey:
            raise StandardError('Primary key not found.')
        print (list(map(lambda f: '`%s`' % f, fields)))
        for k in mappings.keys():
            attrs.pop(k)
        attrs['__mappings__'] = mappings
        attrs['__table__'] = name 
        return type.__new__(cls, name, bases, attrs)


class Model(dict,metaclass=ModelMetaclass):
    def __init__(self, **kw):
        #self.kw=kw
        super(Model, self).__init__(**kw)  
    #def __getitem__(self,key):
     #   return self.kw[key]
    #def __setitem__(self,key,value):
     #   self.kw[key]=value
    def __getattr__(self, key):
        try:
            return self[key]
        except KeyError:
            raise AttributeError(r"'Model' object has no attribute '%s'" % key)

    def __setattr__(self, key, value):
        self[key] = value
    def save(self):
        fields = []
        params = []
        args = []
        for k, v in self.__mappings__.items():
            fields.append(v.name)
            params.append(v.column_type)
            args.append(getattr(self,k,None))
        sql = 'insert into %s (%s) values (%s)' % (self.__table__, ','.join(fields), ','.join(params))
        print('SQL: %s' % sql)
        print('ARGS: %s' % str(args))


class User(Model):
    id = IntegerField('id',primary_key=True)
    name = StringField('username')
    email = StringField('email')
    password = StringField('password')


u = User(id=12345, name='Michael', email='test@orm.org', password='my-pwd')
u.save()
