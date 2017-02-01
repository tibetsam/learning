class Tree():
    def __init__(self, cargo=None, left=None, right=None):
        self.cargo=cargo
        self.left=left
        self.right=right



a=[1,2,3,4,5,6,7,8]

m=(len(a)/2)

root=Tree(a[(len(a)/2)])

def btree(tree,a=None,b=None,l=None):
    print l
    if (len(l)%2)!=0:
        mid=(len(l)/2)
    else:
        mid=(len(l)/2)-1
    if not mid:return
    tree.left=Tree(a)
    tree.right=Tree(b)
    if mid==1:
        btree(tree.left,l[:mid][mid/2],None,l[:mid])
        btree(tree.right,None,l[mid+1:][mid/2],l[mid+1:])
    else:
        btree(tree.left,l[:mid][(mid/2)-1],l[:mid][(mid/2)],l[:mid])
        btree(tree.right,l[mid+1:][(mid/2)+1],l[mid+1:][(mid/2)],l[mid+1:])
btree(root,a[m-1],a[m+1],a)

def printree(tree,length=0):
    if tree==None: return
    printree(tree.right, length+1)
    print " "*length*4, tree.cargo
    printree(tree.left, length+1)

printree(root)


'''
for i in range(len(a)):
    tree=root
    if i<len(a):
        while tree.left !=None:
            tree=tree.left
    if i >len(a):
        while tree.right!=None:
            tree=tree.right
    if tree.cargo <a[len(a)/2]:
        n=1
        tree.left=Tree(a[m-(i*2-1)])
        tree.right=Tree(a[m-i])

    elif tree.cargo >a[len(a)/2]:
        tree.left=Tree(a[m+n*2])
        tree.right=Tree(a[m+n*2+1])
    else:
        tree.left=Tree(a[i])
        tree.right=Tree(a[i+m+1])
    m=m/2
'''



