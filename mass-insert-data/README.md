# Mass Insert

## Requirements
The python script will need additional packages
### Installation
```console
pip install -r requirements.txt
```
Installs all the required packages.

## insert-artist.py
The `insert-artist.py` inserts the top 100 artist fetched from the `fetching-data` folder into the oracle database.
The database connetion requires .env in this folder.

## create-insert4songs.py
The `create-insert4songs.py` creates a `top100-songs.sql` file. This File has 100 insert statements in it  with a pre specified date.

This was neccessary because later on we needed to filter the data.