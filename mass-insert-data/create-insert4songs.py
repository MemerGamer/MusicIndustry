#!/bin/python3
import os
import sys

original_stdout = sys.stdout
try:
    f = open("../fetching-data/top100_songs.txt", "r")
    with open('top100-songs.sql', 'w') as g:
        sys.stdout = g
        for song in f:
            song = song.rstrip()
            print('''INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, '{}',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));'''.format(song))
        sys.stdout = original_stdout
except Exception as e:
    print("Error: ",str(e))