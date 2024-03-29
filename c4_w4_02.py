import sqlite3
import re
conn = sqlite3.connect('sql1.sqlite')
cur = conn.cursor()

cur.execute('DROP TABLE IF EXISTS Counts')
conn.commit()
cur.execute('CREATE TABLE Counts (org TEXT, count INTEGER)')

fname = raw_input('Enter file name:')
if len(fname)<1: fname='mbox.txt'
fh = open(fname)
text=fh.read()

email_list=re.findall(r'From:.*@(.*?)\s',text)
for org in email_list:
    cur.execute('SELECT count FROM Counts WHERE org = ?',(org,))
    row = cur.fetchone()
    if row is None:
        cur.execute('INSERT INTO Counts (org,count) VALUES (?,1)',(org,))
    else:
        cur.execute('UPDATE Counts SET count=count+1 WHERE org = ?', (org,))
conn.commit()

sqlstr = 'SELECT org, count FROM Counts ORDER BY count DESC LIMIT 10'
print "Counts:"
for row in cur.execute(sqlstr):
    print str(row[0]), row[1]
cur.close()


