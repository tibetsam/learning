class Tree():

    def __init__(self, cargo=None, left=None, right=None):
        self.cargo=cargo
        self.left=left
        self.right=right


root=Tree(1)
n=2
for i in range(2,5):
    tree=root
    if (i%2) ==0:
        while tree.left != None:
            tree=tree.left
    else:
        while tree.right !=None:
            tree=tree.right
    tree.left=Tree(n)
    tree.right=Tree(n+1)
    n=n+2
'''
atree=Tree(1)
temp=atree
for i in range(1,10,2):
    while temp.left !=None:
        if i >5:
            temp=temp.right
        else:
            temp=temp.left
    temp.left=Tree(i+1)
    temp.right=Tree(i+2)

'''


def printree(tree,length=0):
    if tree==None: return
    printree(tree.right, length+1)
    print " "*length*4, tree.cargo
    printree(tree.left, length+1)

printree(root)


def balance(tree,length=0,distance=None):
    if distance==None:
        distance=[]
    if tree ==None:return
    if tree.left ==None and tree.right ==None:
        distance.append(length)
        print tree.cargo, length
    balance(tree.left,length+1, distance)
    balance(tree.right,length+1, distance)
    if (max(distance)-min(distance)) <=1:
        return True
    else:
        return False
dis=balance(root)

print dis
