import re

fname=raw_input('Please put the file name:')
if len(fname)< 1: fh=open('sample.txt')
else:fh=open(fname)
rlist=re.findall(r'[0-9]+', fh.read())
fsum=0
for i in rlist:
    i=int(i)
    fsum=i+fsum
print "There are %s values and the sum ends with %s" % (len(rlist),fsum)
#print sum( [ int(x) for x in re.findall(r'[0-9]+',fh.read()) ] )
