class Setstack():
    def __init__(self,value,limit=3):
        self.list=[[]]
        self.limit=limit
        if value is not None:
            self.push(value)

    def push(self, value):
        if len(self.list[-1]) >= self.limit:
            self.list.append([])
        self.list[-1].append(value)

    def pop(self):
        if len(self.list)==1 and not self.list[0]:
            raise IndexError('pop from empty stack')
        if not self.list[-1]:
            self.list.pop()
        self.list[-1].pop()
        if not self.list[-1]:
            self.list.pop()
        
    def __str__(self):
        return str(self.list)

    def popa(self, pos):
        length=len(self.list)-1
        try:
            if self.list[-1]==self.list[pos]:
                self.pop()
            else:
                temp=self.list[pos+1:]
                if not self.list[pos]:
                    self.list.pop()
                self.list[pos].pop()
                    
                while pos < length:
                    self.list.pop()
                    pos+=1
                for i in temp:
                    for j in i:
                        self.push(j)
        except:
            raise IndexError('pop from empty stack')
a=Setstack(1)

for x in range(9):
    a.push(x)
print a.list
