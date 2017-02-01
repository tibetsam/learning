import 
from BeautifulSoup import *
import re


#open htm file
htm_file=raw_input('Please enter file name:')
if len(htm_file) < 1:htm_file='sheet006.htm'
with open(htm_file, 'r') as fh:
    htm=fh.read()

#Parse htm file
soup=BeautifulSoup(htm)
nodes=soup('td')
re_node=re.compile(r"[a-zA-Z]*\d{5}$")
re_console=re.compile(r'CONSOLE.*M')
re_pdu=re.compile(r'PDU.*')
re_pdu_node=re.compile(r'fijoifpdu\d{5}$')
plist=[]
host_dict={}
pdu_dict={}
i=0
while i < len(nodes):
    if re_console.match(nodes[i].next):
        m=i
        i+=1
        continue
    elif re_pdu.match(nodes[i].next):
        n=i
        i+=1
        continue
    else:
        i=i+1

for node in nodes[:m]:
    if re_node.match(node.next):
        plist.append((node.next).encode('utf-8'))
        plist.append((node.findNext('td').next).encode('utf-8'))
        plist.append((node.findNext('td').findNext('td').next).encode('utf-8'))

for node in nodes[m:n]:
    if re_node.match(node.next):
        if node.findNext('td').findNext('td').next == '&nbsp;':
            host_dict[(node.next).encode('utf-8')]=(node.findNext('td').findNext('td').findNext('td').next).encode('utf-8')
        else:
            host_dict[(node.next).encode('utf-8')]=(node.findNext('td').findNext('td').next).encode('utf-8')

for node in nodes[n:]:
    pass

    
length=len(plist)
part=length/6
plist=[x for x in [plist[i*length/part:(i+1)*length/part] for i in range(part)] if not x.count('&nbsp;')]


print plist
print host_dict

