#!/bin/python3
import sys
import billboard

chart = billboard.ChartData('hot-100')

original_stdout = sys.stdout

with open('top100_songs.txt', 'w') as f:
    sys.stdout = f
    for song in chart:
        print(song.title)
    sys.stdout = original_stdout

with open('top100_artist.txt', 'w') as f:
    sys.stdout = f
    for song in chart:
        print(song.artist)
    sys.stdout = original_stdout