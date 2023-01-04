# Tömeges adatbevitel

## Követelémnyek

A python script további csomagokat fog igényelni

### Telepítés
```console
pip install -r requirements.txt
```
Telepíti az összes szükséges csomagot.

## insert-artist.py
Az `insert-artist.py` a `fetching-data` mappából kinyert legjobb 100 előadót szúrja be az oracle adatbázisba.
Az adatbázis-kapcsolat létrehozásához .env fájl szükséges ebben a mappában.

## create-insert4songs.py
Az `create-insert4songs.py` létrehozza a `top100-songs.sql` fájlt. Ez a fájl 100 beszúrási utasítást tartalmaz előre meghatározott dátummal.

Ez szükséges volt később, mert szűrni kellett az adatokat.