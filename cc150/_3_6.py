class Stack():
    def __init__(self, *values):
        if not values:
            values=None
        self.list=[]
        self.mins=None
        self.cur_min=float('inf')
        if values is not None:
            for v in values:
                self.push(v)
        return

    def push(self,value):
        #if value == (min(self.cur_min, value)):
         #   self.mins=self.cur_min=value
        self.list.append(value)
        return self.list
    
    def sort(self):
        temp=Stack()
        temp.list=[]
        while self.list:
            data=self.list.pop()
            while (temp.list != [] and temp.list[-1]>data):
                self.push(temp.list.pop())
            temp.push(data)
        return temp
    
    def min(self):
        return self.mins

    def pop(self):
        return self.list.pop()
    def __str__(self):
        return str(self.list)

a=[5,2,1,3,4]
b=Stack(*a)
c=b.sort()
print c
