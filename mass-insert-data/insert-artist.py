#!/bin/python3
import sys
import cx_Oracle
import os
from dotenv import load_dotenv
load_dotenv()
import time

# Environmental variables
host = os.getenv("DB_HOST")
port = os.getenv("DB_PORT")
sid = os.getenv("DB_SID")
user = os.getenv("DB_USER")
password = os.getenv("DB_PASSWORD")
dsn=host+":"+port+"/"+sid

connection = ""

print("Billboard 100 Artists")
time.sleep(2)
print("Loading")

try:
    f = open("../fetching-data/top100_artist.txt", "r")

    with cx_Oracle.connect(user=user, password=password, dsn=dsn) as co:
        print("Connected. Inserting Data")
        cur=co.cursor()

        cur.execute('''select * from artists''')

        for artist in f:
            artist = artist.rstrip()
            print('''INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, '{}')'''.format(artist))
            cur.execute('''INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, '{}')'''.format(artist))
            time.sleep(1)

        co.commit()
        cur.close()
        print("Data Inserted")
except Exception as e:
    print("Error: ",str(e))
