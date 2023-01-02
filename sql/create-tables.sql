-- CREATE TABLES SQL
-- Kovács Bálit-Hunor
-- Informatika II. D

-- TOTAL TABLES: 27

Begin
for c in (select table_name from user_tables) loop
execute immediate ('drop table "'||c.table_name||'" cascade constraints');
end loop;
End;
/
PURGE RECYCLEBIN;
COMMIT;

-- 1. Publisher 
CREATE SEQUENCE publishers_seq START WITH 1;

CREATE TABLE Publishers (
  publisher_id              NUMBER(10)  DEFAULT publishers_seq.nextval NOT NULL,
  publisher_name          	VARCHAR2(255)  NOT NULL,
  publisher_formationDate	DATE);

ALTER TABLE Publishers ADD CONSTRAINT publisher_pk PRIMARY KEY (publisher_id);
COMMIT;

INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Sony Music Publishing', TO_DATE('1995-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Universal Music Publishing Group', TO_DATE('1934-09-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));
INSERT INTO PUBLISHERS (PUBLISHER_ID,PUBLISHER_NAME , PUBLISHER_FORMATIONDATE) VALUES (DEFAULT, 'Warner Chappell Music', TO_DATE('1987-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'));

--ALTER TABLE Publishers
--ADD publisher_formationDate DATE;

-- 2. Producers 
CREATE SEQUENCE producers_seq START WITH 1;

CREATE TABLE Producers (
  producer_id              NUMBER(10)  DEFAULT producers_seq.nextval NOT NULL,
  producer_name            VARCHAR2(255)  NOT NULL);

ALTER TABLE Producers ADD (
  CONSTRAINT producer_pk PRIMARY KEY (producer_id));
COMMIT;

-- 3. ProducersPublishing
CREATE SEQUENCE producerspublishing_seq START WITH 1;

CREATE TABLE ProducersPublishing (
  prodpub_id              	NUMBER(10)  DEFAULT producerspublishing_seq.nextval NOT NULL,
  producer_id				NUMBER(10)	NOT NULL,
  publisher_id          	NUMBER(10)  NOT NULL);

ALTER TABLE ProducersPublishing ADD (
  CONSTRAINT prodpub_pk PRIMARY KEY (prodpub_id),
  CONSTRAINT prod_fk FOREIGN KEY (producer_id)
  REFERENCES Producers(producer_id),
  CONSTRAINT publ_fk FOREIGN KEY (publisher_id)
  REFERENCES Publishers(publisher_id));
COMMIT;


-- 4. Artists
CREATE SEQUENCE artists_seq START WITH 1;
CREATE TABLE Artists (
  artist_id              	NUMBER(10)  DEFAULT artists_seq.nextval NOT NULL,
  artist_name            	VARCHAR2(255)  NOT NULL);
ALTER TABLE Artists ADD (
  CONSTRAINT artist_pk PRIMARY KEY (artist_id));
COMMIT;

-- 5. Bands
CREATE TABLE Bands (
  band_id              	NUMBER(10) NOT NULL);
ALTER TABLE Bands ADD (
  CONSTRAINT band_pk PRIMARY KEY (band_id),
  CONSTRAINT band_fk FOREIGN KEY (band_id)
  REFERENCES Artists(artist_id));
COMMIT;

-- 6. SoloArtists
CREATE TABLE SoloArtists (
  soloArtist_id              	NUMBER(10) NOT NULL,
  soloArtist_name            	VARCHAR2(255)  NOT NULL);
ALTER TABLE SoloArtists ADD (
  CONSTRAINT soloArtist_pk PRIMARY KEY (soloArtist_id),
  CONSTRAINT soloArtist_fk FOREIGN KEY (soloArtist_id)
  REFERENCES Artists(artist_id));
COMMIT;

-- 7. ArtistsInBand
CREATE SEQUENCE artistsInBand_seq START WITH 1;
CREATE TABLE ArtistsInBand (
  artInBand_id              	NUMBER(10) DEFAULT artistsInBand_seq.nextval NOT NULL,
  artist_id              		NUMBER(10) NOT NULL,
  band_id              			NUMBER(10) NOT NULL);
ALTER TABLE ArtistsInBand ADD (
  CONSTRAINT artInBand_pk PRIMARY KEY (artInBand_id),
  CONSTRAINT artist2_fk FOREIGN KEY (artist_id)
  REFERENCES SoloArtists(soloArtist_id),
  CONSTRAINT band2_fk FOREIGN KEY (band_id)
  REFERENCES Bands(band_id));
COMMIT;


-- 8. Instruments
CREATE SEQUENCE instruments_seq START WITH 1;
CREATE TABLE Instruments (
  instrument_id              	NUMBER(10) DEFAULT instruments_seq.nextval NOT NULL,
  instrument_name            	VARCHAR2(255)  NOT NULL);
ALTER TABLE Instruments ADD (
  CONSTRAINT instrument_pk PRIMARY KEY (instrument_id));
COMMIT;

-- 9. Plays
CREATE SEQUENCE play_seq START WITH 1;
CREATE TABLE Plays (
  play_id              	NUMBER(10) DEFAULT play_seq.nextval NOT NULL,
  artist_id             NUMBER(10) NOT NULL,
  instrument_id         NUMBER(10) NOT NULL);
ALTER TABLE Plays ADD (
  CONSTRAINT play_pk PRIMARY KEY (play_id),
  CONSTRAINT artist3_fk FOREIGN KEY (artist_id)
  REFERENCES SoloArtists(soloArtist_id),
  CONSTRAINT instrument_fk FOREIGN KEY (instrument_id)
  REFERENCES Instruments(instrument_id));
COMMIT;

-- 10. Awards
CREATE SEQUENCE awards_seq START WITH 1;
CREATE TABLE Awards (
  award_id              NUMBER(10)  DEFAULT awards_seq.nextval NOT NULL,
  award_name          	VARCHAR2(255)  NOT NULL,
  award_date			DATE);

ALTER TABLE Awards ADD CONSTRAINT award_pk PRIMARY KEY (award_id);
COMMIT;

-- 11. ArtistsAwarded
CREATE SEQUENCE artistsAwarded_seq START WITH 1;
CREATE TABLE ArtistsAwarded (
  artistAwarded_id      NUMBER(10) DEFAULT artistsAwarded_seq.nextval NOT NULL,
  artist_id             NUMBER(10) NOT NULL,
  award_id         		NUMBER(10) NOT NULL);
ALTER TABLE ArtistsAwarded ADD (
  CONSTRAINT artistsAwarded_pk PRIMARY KEY (artistAwarded_id),
  CONSTRAINT artist4_fk FOREIGN KEY (artist_id)
  REFERENCES Artists(artist_id),
  CONSTRAINT award_fk FOREIGN KEY (award_id)
  REFERENCES Awards(award_id));
COMMIT;

-- 12. StudioLocations
CREATE SEQUENCE studioLocations_seq START WITH 1;
CREATE TABLE StudioLocations (
  studioLocation_id      	NUMBER(10) DEFAULT studioLocations_seq.nextval NOT NULL,
  studioLocation_name    	VARCHAR(255) NOT NULL,
  studioLocation_country  	VARCHAR(255) NOT NULL,
  studioLocation_county   	VARCHAR(255) NOT NULL,
  studioLocation_settlement VARCHAR(255) NOT NULL,
  studioLocation_street    	VARCHAR(255) NOT NULL,
  studioLocation_nr    		VARCHAR(255) NOT NULL,
  studioLocation_longitude  FLOAT(126) NOT NULL,
  studioLocation_latitude   FLOAT(126) NOT NULL);

ALTER TABLE StudioLocations ADD (
  CONSTRAINT studioLocations_pk PRIMARY KEY (studioLocation_id));
COMMIT;

-- 13. Studios
CREATE SEQUENCE studios_seq START WITH 1;
CREATE TABLE Studios (
  studio_id      		NUMBER(10) DEFAULT studios_seq.nextval NOT NULL,
  studio_name    		VARCHAR(255) NOT NULL,
  studioLocation_id     NUMBER(10) NOT NULL);
ALTER TABLE Studios ADD (
  CONSTRAINT studio_pk PRIMARY KEY (studio_id),
  CONSTRAINT studioLocation_fk FOREIGN KEY (studioLocation_id)
  REFERENCES StudioLocations(studioLocation_id));
COMMIT;

-- 14. RehearsalRoomLocations
CREATE SEQUENCE rehearsalRoomLocations_seq START WITH 1;
CREATE TABLE RehearsalRoomLocations (
  rehearsalRoomLocation_id      	NUMBER(10) DEFAULT rehearsalRoomLocations_seq.nextval NOT NULL,
  rehearsalRoomLocation_name    	VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_country  	VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_county   	VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_settlement VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_street    	VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_nr    		VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_longitude  FLOAT(126) NOT NULL,
  rehearsalRoomLocation_latitude   FLOAT(126) NOT NULL);

ALTER TABLE RehearsalRoomLocations ADD (
  CONSTRAINT rehearsalRoomLocation_pk PRIMARY KEY (rehearsalRoomLocation_id));
COMMIT;

-- 15. RehearsalRooms
CREATE SEQUENCE rehearsalRooms_seq START WITH 1;
CREATE TABLE RehearsalRooms (
  rehearsalRoom_id      		NUMBER(10) DEFAULT rehearsalRooms_seq.nextval NOT NULL,
  rehearsalRoom_name    		VARCHAR(255) NOT NULL,
  RehearsalRoomLocation_id     NUMBER(10) NOT NULL);
ALTER TABLE RehearsalRooms ADD (
  CONSTRAINT rehearsalRoom_pk PRIMARY KEY (rehearsalRoom_id),
  CONSTRAINT rehearsalRoomLocation_fk FOREIGN KEY (rehearsalRoomLocation_id)
  REFERENCES RehearsalRoomLocations(rehearsalRoomLocation_id));
COMMIT;

-- 16. Practicing
CREATE SEQUENCE practicing_seq START WITH 1;
CREATE TABLE Practicing (
  practicing_id      		NUMBER(10) DEFAULT practicing_seq.nextval NOT NULL,
  rehearsalRoom_id     		NUMBER(10) NOT NULL,
  artist_id					NUMBER(10) NOT NULL,
  practice_start			DATE NOT NULL,
  practice_end				DATE NOT NULL);
 
ALTER TABLE Practicing ADD (
  CONSTRAINT practicing_pk PRIMARY KEY (practicing_id),
  CONSTRAINT rehearsalRoom1_fk FOREIGN KEY (rehearsalRoom_id)
  REFERENCES RehearsalRooms(rehearsalRoom_id),
  CONSTRAINT artist5_fk FOREIGN KEY (artist_id)
  REFERENCES Artists(artist_id));
COMMIT;

-- 17. Genres
CREATE SEQUENCE genres_seq START WITH 1;
CREATE TABLE Genres (
  genre_id      		NUMBER(10) DEFAULT genres_seq.nextval NOT NULL,
  genre_name    		VARCHAR(255) NOT NULL);
ALTER TABLE Genres ADD (
  CONSTRAINT genre_pk PRIMARY KEY (genre_id));
COMMIT;

-- 18. Musics
CREATE SEQUENCE musics_seq START WITH 1;
CREATE TABLE Musics (
  music_id      		NUMBER(10) DEFAULT musics_seq.nextval NOT NULL,
  music_name     		VARCHAR(255) NOT NULL,
  music_release_date	DATE NOT NULL);
 
ALTER TABLE Musics ADD (
  CONSTRAINT music_pk PRIMARY KEY (music_id));
COMMIT;

-- 19. MusicsAwarded
CREATE SEQUENCE musicsAwarded_seq START WITH 1;
CREATE TABLE MusicsAwarded (
  musicAwarded_id      		NUMBER(10) DEFAULT musicsAwarded_seq.nextval NOT NULL,
  music_id     				NUMBER(10) NOT NULL,
  award_id					NUMBER(10) NOT NULL);
 
ALTER TABLE MusicsAwarded ADD (
  CONSTRAINT musicAwarded_pk PRIMARY KEY (musicAwarded_id),
  CONSTRAINT music1_fk FOREIGN KEY (music_id)
  REFERENCES Musics(music_id),
  CONSTRAINT award2_fk FOREIGN KEY (award_id)
  REFERENCES Awards(award_id));
COMMIT;

-- 20. ProducersInGenres
CREATE SEQUENCE producersInGenres_seq START WITH 1;
CREATE TABLE ProducersInGenres (
  producerInGenre_id      		NUMBER(10) DEFAULT producersInGenres_seq.nextval NOT NULL,
  producer_id     				NUMBER(10) NOT NULL,
  genre_id						NUMBER(10) NOT NULL);
 
ALTER TABLE ProducersInGenres ADD (
  CONSTRAINT producerInGenre_pk PRIMARY KEY (producerInGenre_id),
  CONSTRAINT producer2_fk FOREIGN KEY (producer_id)
  REFERENCES Producers(producer_id),
  CONSTRAINT genre3_fk FOREIGN KEY (genre_id)
  REFERENCES Genres(genre_id));
COMMIT;

-- 21. ProducersWWArtists
CREATE SEQUENCE producersWWArtists_seq START WITH 1;
CREATE TABLE ProducersWWArtists (
  prodwart_id      				NUMBER(10) DEFAULT producersWWArtists_seq.nextval NOT NULL,
  producer_id     				NUMBER(10) NOT NULL,
  artist_id						NUMBER(10) NOT NULL,
  music_id						NUMBER(10) NOT NULL);
 
ALTER TABLE ProducersWWArtists ADD (
  CONSTRAINT prodwart_pk PRIMARY KEY (prodwart_id),
  CONSTRAINT producer3_fk FOREIGN KEY (producer_id)
  REFERENCES Producers(producer_id),
  CONSTRAINT artist6_fk FOREIGN KEY (artist_id)
  REFERENCES Artists(artist_id),
  CONSTRAINT music3_fk FOREIGN KEY (music_id)
  REFERENCES Musics(music_id));
COMMIT;

-- 22. MusicsInGenres
CREATE SEQUENCE musicsInGenres_seq START WITH 1;
CREATE TABLE MusicsInGenres (
  musicInGenre_id      		NUMBER(10) DEFAULT musicsInGenres_seq.nextval NOT NULL,
  music_id     				NUMBER(10) NOT NULL,
  genre_id						NUMBER(10) NOT NULL);
 
ALTER TABLE MusicsInGenres ADD (
  CONSTRAINT musicInGenre_pk PRIMARY KEY (musicInGenre_id),
  CONSTRAINT music4_fk FOREIGN KEY (music_id)
  REFERENCES Musics(music_id),
  CONSTRAINT genre5_fk FOREIGN KEY (genre_id)
  REFERENCES Genres(genre_id));
COMMIT;

-- 23. Recorded
CREATE SEQUENCE recorded_seq START WITH 1;
CREATE TABLE Recorded (
  recorded_id      		NUMBER(10) DEFAULT recorded_seq.nextval NOT NULL,
  prodwart_id     		NUMBER(10) NOT NULL,
  studio_id				NUMBER(10) NOT NULL,
  recorded_date			DATE NOT NULL);
 
ALTER TABLE Recorded ADD (
  CONSTRAINT recorded_pk PRIMARY KEY (recorded_id),
  CONSTRAINT prodwart2_fk FOREIGN KEY (prodwart_id)
  REFERENCES ProducersWWArtists(prodwart_id),
  CONSTRAINT studio3_fk FOREIGN KEY (studio_id)
  REFERENCES Studios(studio_id));
COMMIT;

-- 24. ConcertLocations
CREATE SEQUENCE concertLocations_seq START WITH 1;
CREATE TABLE ConcertLocations (
  concertLocation_id      	NUMBER(10) DEFAULT concertLocations_seq.nextval NOT NULL,
  concertLocation_country  	VARCHAR(255) NOT NULL,
  concertLocation_county   	VARCHAR(255) NOT NULL,
  concertLocation_settlement VARCHAR(255) NOT NULL,
  concertLocation_street    	VARCHAR(255) NOT NULL,
  concertLocation_nr    		VARCHAR(255) NOT NULL,
  concertLocation_longitude  FLOAT(126) NOT NULL,
  concertLocation_latitude   FLOAT(126) NOT NULL);

ALTER TABLE ConcertLocations ADD (
  CONSTRAINT concertLocation_pk PRIMARY KEY (concertLocation_id));
COMMIT;

-- 25. Concerts
CREATE SEQUENCE concerts_seq START WITH 1;
CREATE TABLE Concerts (
  concert_id      		NUMBER(10) DEFAULT concerts_seq.nextval NOT NULL,
  concert_name     		VARCHAR(255) NOT NULL,
  concertLocation_id	NUMBER(10) NOT NULL);
 
ALTER TABLE Concerts ADD (
  CONSTRAINT concert_pk PRIMARY KEY (concert_id),
  CONSTRAINT concertLocation1_fk FOREIGN KEY (concertLocation_id)
  REFERENCES ConcertLocations(concertLocation_id));
COMMIT;

-- 26. Performances
CREATE SEQUENCE performances_seq START WITH 1;
CREATE TABLE Performances (
  performance_id      		NUMBER(10) DEFAULT performances_seq.nextval NOT NULL,
  artist_id			NUMBER(10) NOT NULL,
  music_id			NUMBER(10) NOT NULL,
  performance_start DATE NOT NULL,
  performance_end 	DATE NOT NULL);
 
ALTER TABLE Performances ADD (
  CONSTRAINT performance_pk PRIMARY KEY (performance_id),
  CONSTRAINT artist7_fk FOREIGN KEY (artist_id)
  REFERENCES Artists(artist_id),
  CONSTRAINT music5_fk FOREIGN KEY (music_id)
  REFERENCES Musics(music_id));
COMMIT;

-- 27. Performing
CREATE SEQUENCE performing_seq START WITH 1;
CREATE TABLE Performing (
  performing_id      		NUMBER(10) DEFAULT performing_seq.nextval NOT NULL,
  concert_id				NUMBER(10) NOT NULL,
  performance_id			NUMBER(10) NOT NULL);
 
ALTER TABLE Performing ADD (
  CONSTRAINT performing_pk PRIMARY KEY (performing_id),
  CONSTRAINT concert3_fk FOREIGN KEY (concert_id)
  REFERENCES Concerts(concert_id),
  CONSTRAINT performance_fk FOREIGN KEY (performance_id)
  REFERENCES Performances(performance_id));
COMMIT;