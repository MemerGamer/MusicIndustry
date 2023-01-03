-- INSERT TABLES SQL
-- Kovács Bálit-Hunor
-- Informatika II. D

-- TOTAL TABLES: 27

-- 1. Publisher
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Sony Music Publishing', TO_DATE('1995-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Universal Music Publishing Group', TO_DATE('1934-09-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Warner Chappell Music', TO_DATE('1987-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Kobalt', TO_DATE('2000-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Strengholt Music Group', TO_DATE('1900-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Pen Music Group', TO_DATE('1994-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Bailer Music Publishing', TO_DATE('1963-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Wixen Music', TO_DATE('1978-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Ditto Music Publishing', TO_DATE('2005-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Music Gateway', TO_DATE('2011-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Atlantic Records', TO_DATE('1947-10-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Apple Records', TO_DATE('1947-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Columbia Records', TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));

COMMIT;

SELECT * FROM PUBLISHERS;

-- 2. Producers
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'George Martin'); 
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'Keigo Oyamada'); 
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'Dr. Dre'); 
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'Steve Albini'); 
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'Jimmy Page'); 
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'Quincy Jones'); 
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'Kanye West'); 
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'Aphex Twin'); 
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'Daft Punk'); 
INSERT INTO PRODUCERS (PRODUCER_ID, PRODUCER_NAME) VALUES (DEFAULT, 'Charlie Puth'); 
COMMIT;

SELECT * FROM PRODUCERS;

-- 3. ProducersPublishing
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 7, 2);
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 7, 1); 
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 10, 3); 
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 2, 3); 
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 6, 3); 
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 9, 3); 
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 5, 11); 
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 10, 11); 
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 9, 13); 
INSERT INTO PRODUCERSPUBLISHING(PRODPUB_ID,PRODUCER_ID,PUBLISHER_ID) VALUES (DEFAULT, 1, 12); 
COMMIT;

SELECT * FROM PRODUCERSPUBLISHING;

-- 4. Artists
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'DJ Khaled');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Alan Walker');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Harry Styles');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Shakira');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'The Chainsmokers');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Taylor Swift');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Sting');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Billie Eilish');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Drake');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Ariana Grande');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Muse');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Rage Against the Machine');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Evanescence');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Scorpions');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Three Days Grace');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Slipknot');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'The Offspring');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Korn');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Limp Bizkit');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Corey Taylor');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Joey Jordison');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Mick Thomson');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Shawn Crahan');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Sid Wilson');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'Paul Gray');
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME) VALUES (DEFAULT, 'James Root');
COMMIT;

SELECT * FROM ARTISTS
ORDER BY ARTIST_ID ;

SELECT artists_seq.currval FROM dual;
ALTER SEQUENCE artists_seq RESTART START WITH 100;
COMMIT;

-- 5. Bands
INSERT INTO BANDS(BAND_ID) VALUES (5);
INSERT INTO BANDS(BAND_ID) VALUES (11);
INSERT INTO BANDS(BAND_ID) VALUES (12);
INSERT INTO BANDS(BAND_ID) VALUES (13);
INSERT INTO BANDS(BAND_ID) VALUES (14);
INSERT INTO BANDS(BAND_ID) VALUES (15);
INSERT INTO BANDS(BAND_ID) VALUES (16);
INSERT INTO BANDS(BAND_ID) VALUES (17);
INSERT INTO BANDS(BAND_ID) VALUES (18);
INSERT INTO BANDS(BAND_ID) VALUES (19);
COMMIT;

SELECT * FROM BANDS;

-- 6. SoloArtists
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(1,'Khaled Mohamed Khaled');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(2,'Alan Olav Walker');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(3,'Harry Edward Styles');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(4,'Shakira Isabel Mebarak Ripoll');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(6,'Taylor Alison Swift');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(7,'Gordon Matthew Thomas Sumner');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(8,'Billie Eilish Pirate Baird O''Connell');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(9,'Aubrey Drake Graham');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(10,'Ariana Grande-Butera');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(21,'Corey Todd Taylor');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(20,'Nathan Jonas Jordison');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(22,'Mickael Gordon Thomson');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(23,'Michael Shawn Crahan');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(24,'Sidney George Wilson');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(25,'Paul Dedrick Gray');
INSERT INTO SOLOARTISTS(SOLOARTIST_ID,SOLOARTIST_NAME) VALUES(26,'James Donald Root');

COMMIT;
SELECT * FROM SOLOARTISTS;

-- 7. ArtistsInBand
INSERT INTO ARTISTSINBAND(ARTINBAND_ID,ARTIST_ID,BAND_ID) VALUES (DEFAULT, 20, 16);
INSERT INTO ARTISTSINBAND(ARTINBAND_ID,ARTIST_ID,BAND_ID) VALUES (DEFAULT, 21, 16);
INSERT INTO ARTISTSINBAND(ARTINBAND_ID,ARTIST_ID,BAND_ID) VALUES (DEFAULT, 22, 16);
INSERT INTO ARTISTSINBAND(ARTINBAND_ID,ARTIST_ID,BAND_ID) VALUES (DEFAULT, 23, 16);
INSERT INTO ARTISTSINBAND(ARTINBAND_ID,ARTIST_ID,BAND_ID) VALUES (DEFAULT, 24, 16);
INSERT INTO ARTISTSINBAND(ARTINBAND_ID,ARTIST_ID,BAND_ID) VALUES (DEFAULT, 25, 16);
INSERT INTO ARTISTSINBAND(ARTINBAND_ID,ARTIST_ID,BAND_ID) VALUES (DEFAULT, 26, 16);
COMMIT;

SELECT * FROM ARTISTSINBAND;


-- 8. Instruments
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Drum');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Acoustic Guitar');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Electric Guitar');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Bass Guitar');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Violin');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Viola');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Piano');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Pianino');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Vocal');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Harp');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Percussion Instruments');
INSERT INTO INSTRUMENTS(INSTRUMENT_ID,INSTRUMENT_NAME) VALUES (DEFAULT,'Synthesizer');
COMMIT;

SELECT * FROM INSTRUMENTS;

-- 9. Plays
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 1, 2);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 1, 9);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 2, 12);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 3, 1);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 3, 2);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 3, 3);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 3, 4);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 3, 9);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 4, 1);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 4, 2);
INSERT INTO PLAYS(PLAY_ID,ARTIST_ID,INSTRUMENT_ID) VALUES (DEFAULT, 4, 9);
COMMIT;

SELECT * FROM plays;

-- 10. Awards
COMMIT;

SELECT * FROM AWARDS;
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
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Pop');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Rock');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Hip Hop');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Jazz');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Electronic');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Classical');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Heavy metal');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Electronic dance');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Folk');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Reggae');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Soul');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'World');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Alternative rock');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Punk rock');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Indie rock');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'House');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Funk');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Easy listening');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Latin');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Techno');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Pop rock');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Dubstep');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Disco');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Ambient');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'K-pop');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Eletro');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Music of Africa');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Grunge');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Rap');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Trap');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Gospel');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Lofi hip hop');
INSERT INTO GENRES(GENRE_ID,GENRE_NAME) VALUES(DEFAULT, 'Country');
COMMIT;
SELECT * FROM GENRES;

-- 18. Musics
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'All I Want For Christmas Is You',TO_DATE('1924-10-29 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Rockin'' Around The Christmas Tree',TO_DATE('1958-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Jingle Bell Rock',TO_DATE('1957-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'A Holly Jolly Christmas',TO_DATE('2011-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Last Christmas',TO_DATE('1984-12-03 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'It''s The Most Wonderful Time Of The Year',TO_DATE('1963-10-14 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Kill Bill',TO_DATE('2022-12-09 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Feliz Navidad',TO_DATE('1970-06-13 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Anti-Hero',TO_DATE('2022-10-21 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Unholy',TO_DATE('2022-09-22 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'The Christmas Song (Merry Christmas To You)',TO_DATE('1946-10-11 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Santa Tell Me',TO_DATE('2014-11-24 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Sleigh Ride',TO_DATE('2020-10-13 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Underneath The Tree',TO_DATE('2013-11-05 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Christmas (Baby Please Come Home)',TO_DATE('1963-11-22 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Deck The Halls',TO_DATE('1862-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Let It Snow, Let It Snow, Let It Snow',TO_DATE('1993-09-23 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'White Christmas',TO_DATE('1942-07-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Creepin''',TO_DATE('2022-12-05 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Rich Flex',TO_DATE('2022-11-04 00:00:00','yyyy-mm-dd hh24:mi:ss'));

SELECT musics_seq.currval FROM dual;
ALTER SEQUENCE musics_seq RESTART START WITH 20;

INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'It''s Beginning To Look A Lot Like Christmas',TO_DATE('1951-09-18 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Jingle Bells',TO_DATE('1857-09-16 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'I''m Good (Blue)',TO_DATE('2022-08-26 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Here Comes Santa Claus (Right Down Santa Claus Lane)',TO_DATE('1947-10-06 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Die For You',TO_DATE('2017-09-19 00:00:00','yyyy-mm-dd hh24:mi:ss'));


INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Blue Christmas',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Rudolph The Red-Nosed Reindeer',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Bad Habit',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Little Saint Nick',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'You''re A Mean One, Mr. Grinch',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Wonderful Christmastime',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Santa Claus Is Comin'' To Town',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Run Rudolph Run',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'As It Was',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Shirt',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Under The Influence',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Happy Xmas (War Is Over)',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Cuff It',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Happy Holiday / The Holiday Season',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Superhero (Heroes & Villains)',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Merry Christmas',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Nobody Gets Me',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Please Come Home For Christmas',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Santa Baby',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'You Proof',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'This Christmas',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Blind',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Linus And Lucy (Peanuts Theme)',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Something In The Orange',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Made You Look',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Low',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Super Freaky Girl',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Golden Hour',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Just Wanna Rock',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Tomorrow 2',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Lift Me Up',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Love Language',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Someday At Christmas',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Thank God',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Snooze',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Until I Found You',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Seek & Destroy',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Rock And A Hard Place',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'What My World Spins Around',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Victoria''s Secret',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Lavender Haze',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Son Of A Sinner',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Wait In The Truck',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Used',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Special',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Escapism',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Going, Going, Gone',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Heart Like A Truck',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Ghost In The Machine',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Blue Christmas',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Star Walkin'' (League Of Legends Worlds Anthem)',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Santa, Can''t You Hear Me',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'SOS',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Whiskey On You',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Last Christmas',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Gone Girl',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Calm Down',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Too Many Nights',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Notice Me',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Open Arms',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Spin Bout U',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Smoking On My Ex Pack',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Niagara Falls (Foot Or 2)',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Circo Loco',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'F2F',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Face 2 Face',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Kid On Christmas',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Romantic Homicide',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Conceited',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Down Home',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'One Thing At A Time',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Hold Me Closer',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'Far',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO MUSICS (MUSIC_ID, MUSIC_NAME, MUSIC_RELEASE_DATE) VALUES (DEFAULT, 'All Mine',TO_DATE('1887-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));

-- note: this upper block was added with a default release date and that and the id was later cleaned up
SELECT musics_seq.currval FROM dual;
ALTER SEQUENCE musics_seq RESTART START WITH 97;

COMMIT;

SELECT * FROM MUSICS
ORDER BY MUSIC_ID;

-- 19. MusicsAwarded
COMMIT;

SELECT * FROM MUSICSAWARDED;

-- 20. ProducersInGenres
COMMIT;
SELECT * FROM PRODUCERSINGENRES;
-- 21. ProducersWWArtists
COMMIT;

-- 22. MusicsInGenres
COMMIT;
SELECT * FROM MUSICSINGENRES;

-- 23. Recorded
COMMIT;
SELECT * FROM RECORDED;

-- 24. ConcertLocations
COMMIT;
SELECT * FROM CONCERTLOCATIONS;

-- 25. Concerts
COMMIT;
SELECT * FROM CONCERTS;

-- 26. Performances
COMMIT;
SELECT * FROM PERFORMANCES;

-- 27. Performing
COMMIT;
SELECT * FROM PERFORMING;