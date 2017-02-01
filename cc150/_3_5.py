class Queuestack():

    def __init__(self, value=None):
        self.instack=[]
        self.outstack=[]
        if value is not None:
            self.put(value)

    def put(self,value):
        self.instack.append(value)
        return self.instack
    def get(self):
        if self.instack:
            while self.instack:
                self.outstack.append(self.instack.pop())
            element=self.outstack.pop()
            while self.outstack:
                self.instack.append(self.outstack.pop())
            return element
        else:
            return
            #raise IndexError('No more element can be get')
    def __str__(self):
        if self.instack:
            return str(self.instack)
        elif self.outstack:
            return str(self.outstack)
        else:
            return str(None)
