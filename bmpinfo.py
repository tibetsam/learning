import struct,os,pdb,re

def fpath(path, ablist=None):
    if ablist is None:
        ablist=[]
    for item in os.listdir(path):
        abpath=os.path.join(path,item)
        #ablist.append(abpath)
        if os.path.isdir(abpath):
            #pdb.set_trace()
            fpath(abpath,ablist)
        else:
            ablist.append(abpath)
    return ablist

#print (fpath('/home/sam/python'))


def bmpcheck(ablist):
    for item in ablist:
        with open(item,'rb') as fh:
            begin_bytes=fh.read(30)
            if begin_bytes==b'':continue
            else:
                #pdb.set_trace()
                chartuple=struct.unpack('<ccIIIIIIHH', begin_bytes)
                if chartuple[0]==b'B' and chartuple[1]==b'M':
                    print ('Bmp file {0}: Size is {1}*{2}, and clour is {3}'.format(item,chartuple[6],chartuple[7],chartuple[9]))
    return

path=input('Please put the folder you would like to check:')
ablist=fpath(path)
bmpcheck(ablist) 
