import pdb
import json
class Tree():
    def __init__(self, cargo=None, left=None, right=None):
        self.cargo=cargo
        self.left=left
        self.right=right

    def getLeft(self):
        return self.left

    def getRight(self):
        return self.right
    
    def getCargo(self):
        return self.cargo

    def setCargo(self,value):
        self.cargo=value
    
    def setLeft(self,value):
        self.left=value

    def setRight(self,value):
        self.right=value
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

btree=[[1, 2, 3], [2, 4, 5], [4, 6, 7], [6, None, None], [7, 8, 9], [8, None, None], [9, 10, 11], [10, None, None], [11, None, None], [5, None, None], [3, None, None]]
'''
a=None

def retree(tree,x,l=0,r=0):
    global a
    if tree==None: return
    if x==tree.cargo and l>r:
        a=('l',tree)
    elif x==tree.cargo and l<=r:
        a=('r',tree)
    retree(tree.left, x,l+1)
    l=0
    retree(tree.right, x,l,r+1)
    return a

def printanimal(animal,length=0,result=None):
    if result==None:
        result=[]
    else:
        result=result
    if animal== None: return
    #if animal.cargo not in result:
    result.append(animal.cargo)
    try:
        result.append(animal.left.cargo)
    except:
        result.append(None)
    try:
        result.append(animal.right.cargo)
    except:
        result.append(None)
    printanimal(animal.left,length+1,result)
    printanimal(animal.right,length+1,result)
    return result
def visualize(animal,length=0):
    if animal== None: return
    #if animal.cargo not in result:
    visualize(animal.left,length+2)
    print " "*length, animal.cargo
    visualize(animal.right,length+2)
#print printanimal(init)
#print printanimal(atree)

def yes(ques): 
  from string import lower 
  ans = lower(raw_input(ques)) 
  return (ans[0] == 'y')

def animal():

    try: 
        with open('dump.js', 'r') as fh:
            jdata=fh.read()
        data=json.loads(str(jdata))
#        print data
        data=[[data[i],data[i+1],data[i+2]] for i in range(0,len(data),3)]
        
        root=Tree(data[0][0])
        btemp=root

        for x in data:
            while btemp.left !=None and btemp.right != None:
                #print type(init), x[0]
                if x[1]==None or x[2]==None:break
                r=retree(root,x[0])
                if r[0]=='l':
                    btemp=btemp.left
                else:
                    btemp=btemp.right

            if x[1] !=None:   
                btemp.left=Tree(x[1])
            if x[2] !=None:
                btemp.right=Tree(x[2])
        tree=root
        pdb.set_trace()
        visualize(root)
    except:
        # start with a singleton 
        root = Tree("bird") 
        tree = root
    # loop until the user quits 
    while True: 
        print 
        if not yes("Are you thinking of an animal? "): break 

    # walk the tree 
        #tree = root 
        while tree.getLeft() != None: 
            prompt = tree.getCargo() + "? " 
            if yes(prompt): 
                tree = tree.getRight() 
            else: 
                tree = tree.getLeft() 

    # make a guess 
        guess = tree.getCargo() 
        prompt = "Is it a " + guess + "? " 
        if yes(prompt): 
            print "Bingo, I made it!" 
            continue 

    # get new information 
        prompt  = "What is the animal's name? " 
        animal  = raw_input(prompt) 
        prompt  = "What question would distinguish a %s from a %s? " 
        question = raw_input(prompt % (animal,guess)) 

    # add new information to the tree 
        tree.setCargo(question) 
        prompt = "If the animal were %s the answer would be? " 
        if yes(prompt % animal): 
            tree.setLeft(Tree(guess)) 
            tree.setRight(Tree(animal)) 
        else: 
            tree.setLeft(Tree(animal)) 
            tree.setRight(Tree(guess))
    with open ('dump.js', 'w+') as fh:
        fh.write(json.dumps(printanimal(root),separators=(',',':')))

animal()

