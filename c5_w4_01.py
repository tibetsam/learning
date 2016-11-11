import json
import sqlite3

conn=sqlite3.connect('sql2.sqlite')
cur=conn.cursor()

cur.executescript('''
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS Course;

CREATE TABLE User (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
    name TEXT UNIQUE
);

CREATE TABLE Course (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT 
    UNIQUE,
    title TEXT UNIQUE
        );
CREATE TABLE Member (
    user_id     INTEGER,
    course_id   INTEGER,
    role        INTEGER,
    PRIMARY KEY (user_id, course_id)
)

''')

fname=raw_input('Enter File:')
if (len(fname) < 1): fname='roster_data.json'

with open(fname) as fh:
    table=json.loads(fh.read())
    for entry in table:
        name=entry[0]
        title=entry[1]
        role=entry[2]
        
        cur.execute('INSERT OR IGNORE INTO User (name) VALUES (?)', (name,))
        cur.execute('SELECT id from User where name=?', (name,))
        user_id=cur.fetchone()[0]

        cur.execute('INSERT OR IGNORE INTO Course (title) VALUES (?)', (title,))
        cur.execute('SELECT id from Course where title=?', (title,))
        course_id=cur.fetchone()[0]

        cur.execute('INSERT OR REPLACE INTO Member (user_id, course_id, role) VALUES (?,?,?)', (user_id, course_id, role))

    conn.commit()

cur.execute('''
SELECT hex(User.name || Course.title || Member.role ) AS X FROM 
    User JOIN Member JOIN Course 
    ON User.id = Member.user_id AND Member.course_id = Course.id
    ORDER BY X LIMIT 3
''')
print(cur.fetchall())


