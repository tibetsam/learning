import xml.etree.ElementTree as ET
import sqlite3

conn=sqlite3.connect('sql1.sqlite')
cur=conn.cursor()

cur.executescript('''

CREATE TABLE IF NOT EXISTS Artist (
    id  INTEGER NOT NULL PRIMARY KEY UNIQUE,
    name    TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS Genre (
    id  INTEGER NOT NULL PRIMARY KEY UNIQUE,
    name    TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS Album (
    id  INTEGER NOT NULL PRIMARY KEY UNIQUE,
    artist_id  INTEGER,
    title   TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS Track (
    id  INTEGER NOT NULL PRIMARY KEY 
         UNIQUE,
    title TEXT  UNIQUE,
    album_id  INTEGER,
    genre_id  INTEGER,
    len INTEGER, rating INTEGER, count INTEGER
)
''')

fname=raw_input('Enter XML File:')
if (len(fname) < 1): fname='Library.xml'

def check(entry,text):
    find=False
    for child in entry:
        if find: return child.text
        if child.tag == 'key' and child.text == text:
            find=True
    return None

data=ET.parse(fname)

target=data.findall('dict/dict/dict')
print 'Track Count:',len(target)
for entry in target:
    if (check(entry, 'Track ID')) is None: continue

    name=check(entry, 'Name')
    artist=check(entry, 'Artist')
    album=check(entry, 'Album')
    genre=check(entry, 'Genre')
    count = check(entry, 'Play Count')
    rating = check(entry, 'Rating')
    length = check(entry, 'Total Time')

    if name is None or artist is None or album is None \
    or genre is None or length is None: 
        continue
    #if name=='Chase the Ace': print name,artist,album,genre,count,length
    cur.execute('INSERT OR IGNORE INTO Artist(name) VALUES (?)', (artist,))
    cur.execute('SELECT id from Artist where name = ?', (artist,))
    artist_id=cur.fetchone()[0]
    cur.execute('INSERT OR IGNORE INTO Genre(name) VALUES (?)', (genre,))
    cur.execute('SELECT id from Genre where name = ?', (genre,))
    genre_id=cur.fetchone()[0]
    cur.execute('INSERT OR IGNORE INTO Album(artist_id,title) VALUES (?, ?)', (artist_id, album))
    cur.execute('SELECT id from Album where title = ?', (album,))
    album_id=cur.fetchone()[0]
    cur.execute('''INSERT OR IGNORE INTO 
                Track(title,album_id,genre_id,len,rating,count)
                VALUES (?, ?, ?, ?, ?, ?)''', 
                (name,album_id,genre_id,length,rating,count))
conn.commit()
cur.execute('''
SELECT Track.title, Artist.name, Album.title, Genre.name 
    FROM Track JOIN Genre JOIN Album JOIN Artist 
    ON Track.genre_id = Genre.ID and Track.album_id = Album.id 
        AND Album.artist_id = Artist.id
    ORDER BY Artist.name, Track.title LIMIT 3        
''')
print cur.fetchall()
