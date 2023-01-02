-- INSERT TABLES SQL
-- Kovács Bálit-Hunor
-- Informatika II. D

-- TOTAL TABLES: 27

-- 1. Publisher
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Sony Music Publishing', TO_DATE('1995-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Universal Music Publishing Group', TO_DATE('1934-09-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Warner Chappell Music', TO_DATE('1987-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));

COMMIT;

-- 2. Producers
COMMIT;

-- 3. ProducersPublishing
COMMIT;


-- 4. Artists
COMMIT;

-- 5. Bands
COMMIT;

-- 6. SoloArtists
COMMIT;

-- 7. ArtistsInBand
COMMIT;


-- 8. Instruments
COMMIT;

-- 9. Plays
COMMIT;

-- 10. Awards
COMMIT;

-- 11. ArtistsAwarded
COMMIT;

-- 12. StudioLocations
COMMIT;

-- 13. Studios
COMMIT;

-- 14. RehearsalRoomLocations
COMMIT;

-- 15. RehearsalRooms
COMMIT;

-- 16. Practicing
COMMIT;

-- 17. Genres
COMMIT;

-- 18. Musics
COMMIT;

-- 19. MusicsAwarded
COMMIT;

-- 20. ProducersInGenres
COMMIT;

-- 21. ProducersWWArtists
COMMIT;

-- 22. MusicsInGenres
COMMIT;

-- 23. Recorded
COMMIT;

-- 24. ConcertLocations
COMMIT;

-- 25. Concerts
COMMIT;

-- 26. Performances
COMMIT;

-- 27. Performing
COMMIT;