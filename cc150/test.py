class Node():
    def __init__(self, cargo=None, nex_t=None):
        self.cargo=cargo
        self.next=nex_t
    def __str__(self):
        return str(self.cargo)
    def printlist(self):
        while self:
            print self.cargo,
            self=self.next
        print
        return
    def backward(self):
        try:
            self.next.backward()
            print self,
        except:print self

    def delete(self):
        if self ==None:return
        if self.next==None:
            self.cargo=''
        else:
            first=self
            second=self.next
            first.next=second.next
            first.cargo=second.cargo
            second.next=None
            second.cargo=None
    def add(self,cargo):
        start=self
        if start == None:return
        while start:
            tail=start
            start=start.next
        new=Node(cargo)
        tail.next=new
        return self

def checkloop(node):
    a=set()
    while node:
        if node not in a:
            a.add(node)
        else: return node
        node=node.next


def addlist(node1,node2):

    if node1 == None or node2 == None:return
    if node1.cargo == None or node2.cargo == None: return

    pos= (node1.cargo or node2.cargo)
    carry =0
    start=None
    while pos or carry:
        if node1 == None: a=0
        else: a=node1.cargo
        if node2 == None: b=0
        else: b=node2.cargo
        if carry==0:
            total=a + b
        else:
            total=a + b + carry

        carry,d=divmod(total,10)

        new=Node(d)
        if start is None:
            start=current_new=new
        else:
            current_new.next=new
        current_new=new
        try:
            node1=node1.next
            temp1=node1.cargo
        except:
            node1=None
            temp1=None
        try:
            node2=node2.next
            temp2=node2.cargo
        except:
            node2=None
            temp2=None
        pos=(temp1 or temp2)
    current_new.next=None
    start.printlist()

        
 

def backward(node,n):
    if node is None: return
    test=node
    for _ in range(n):
        if test is None:return
        test=test.next
    if test is None:return node
    else:return backward(node.next, n)



def twotwo(node, n):
    run_ahead = node
    for _ in range(n):
        if run_ahead is None:
            raise ValueError('Linked list is shorter than n')
        run_ahead = run_ahead.next
    while run_ahead is not None:
        node = node.next
        run_ahead = run_ahead.next
    return node 
            

def twoone(node):
    '''
    Write code to remove duplicates from an unsorted linked list.
    '''
    seen = set()
    prev = None
    while node is not None:
        if node.cargo in seen:
            prev.next = node.next
        else:
            seen.add(node.cargo)
        prev = node
        node = node.next


def twothree(node):
    if node.next is None:
        raise ValueError('need at least one element following to delete this node')
    prev = node
    node = node.next
    while node is not None:
        prev.cargo = node.cargo
        prev = node
        node = node.next
    prev.next = None

node1=Node(5)
node2=Node(2)
node3=Node(3)
node4=Node(4)
node5=Node(2)
node1.next=node2
node2.next=node3
node3.next=node4
node4.next=node2
'''
node11=Node(8)
node22=Node(7)
node33=Node(5)
node44=Node(5)
node11.next=node22
node22.next=node33
node33.next=node44
'''
#twoone(node1)
#node1.printlist()
#node11.printlist()
#print backward(node1,3)
#print twotwo(node1,1)
#node1.delete()
#node1.printlist()
#twothree(node1)
#addlist(node1,node11)
print node2
print checkloop(node1)
