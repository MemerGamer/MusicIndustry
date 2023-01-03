-- CREATE TABLES SQL
-- Kovács Bálit-Hunor
-- Informatika II. D

-- TOTAL TABLES: 27

-- 1. Publisher 
CREATE TABLE Publishers (
  publisher_id              INT(10)  NOT NULL AUTO_INCREMENT,
  publisher_name            VARCHAR(255)  NOT NULL,
  publisher_formationDate   DATE,
  PRIMARY KEY (publisher_id)
);

COMMIT;

-- 2. Producers 
CREATE TABLE Producers (
  producer_id              INT(10)  NOT NULL AUTO_INCREMENT,
  producer_name            VARCHAR(255)  NOT NULL,
  PRIMARY KEY (producer_id)
);
COMMIT;

-- 3. ProducersPublishing
CREATE TABLE ProducersPublishing (
  prodpub_id               INT(10)  NOT NULL AUTO_INCREMENT,
  producer_id              INT(10)  NOT NULL,
  publisher_id             INT(10)  NOT NULL,
  PRIMARY KEY (prodpub_id),
  FOREIGN KEY (producer_id) REFERENCES Producers(producer_id),
  FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id)
);
COMMIT;


-- 4. Artists
CREATE TABLE Artists (
  artist_id               INT(10)  NOT NULL AUTO_INCREMENT,
  artist_name             VARCHAR(255)  NOT NULL,
  PRIMARY KEY (artist_id)
);
COMMIT;

-- 5. Bands
CREATE TABLE Bands (
  band_id               INT(10) NOT NULL,
  PRIMARY KEY (band_id),
  FOREIGN KEY (band_id) REFERENCES Artists(artist_id)
);
COMMIT;

-- 6. SoloArtists
CREATE TABLE SoloArtists (
  soloArtist_id               INT(10) NOT NULL,
  soloArtist_name             VARCHAR(255)  NOT NULL,
  PRIMARY KEY (soloArtist_id),
  FOREIGN KEY (soloArtist_id) REFERENCES Artists(artist_id)
);
COMMIT;

-- 7. ArtistsInBand
CREATE TABLE ArtistsInBand (
  artInBand_id               INT(10) NOT NULL AUTO_INCREMENT,
  artist_id                  INT(10) NOT NULL,
  band_id                    INT(10) NOT NULL,
  PRIMARY KEY (artInBand_id),
  FOREIGN KEY (artist_id) REFERENCES SoloArtists(soloArtist_id),
  FOREIGN KEY (band_id) REFERENCES Bands(band_id)
);
COMMIT;


-- 8. Instruments
CREATE TABLE Instruments (
  instrument_id              INT(10) NOT NULL AUTO_INCREMENT,
  instrument_name            VARCHAR(255)  NOT NULL,
  PRIMARY KEY (instrument_id)
);
COMMIT;

-- 9. Plays
CREATE TABLE Plays (
  play_id               INT(10) NOT NULL AUTO_INCREMENT,
  artist_id             INT(10) NOT NULL,
  instrument_id         INT(10) NOT NULL,
  PRIMARY KEY (play_id),
  FOREIGN KEY (artist_id) REFERENCES SoloArtists(soloArtist_id),
  FOREIGN KEY (instrument_id) REFERENCES Instruments(instrument_id)
);
COMMIT;

-- 10. Awards
CREATE TABLE Awards (
  award_id              INT(10) NOT NULL AUTO_INCREMENT,
  award_name            VARCHAR(255)  NOT NULL,
  award_date            DATE,
  PRIMARY KEY (award_id)
);
COMMIT;

-- 11. ArtistsAwarded
CREATE TABLE ArtistsAwarded (
  artistAwarded_id      INT(10) NOT NULL AUTO_INCREMENT,
  artist_id             INT(10) NOT NULL,
  award_id              INT(10) NOT NULL,
  PRIMARY KEY (artistAwarded_id),
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
  FOREIGN KEY (award_id) REFERENCES Awards(award_id)
);
COMMIT;

-- 12. StudioLocations
CREATE TABLE StudioLocations (
  studioLocation_id       INT(10) NOT NULL AUTO_INCREMENT,
  studioLocation_name     VARCHAR(255) NOT NULL,
  studioLocation_country  VARCHAR(255) NOT NULL,
  studioLocation_county   VARCHAR(255) NOT NULL,
  studioLocation_settlement VARCHAR(255) NOT NULL,
  studioLocation_street    VARCHAR(255) NOT NULL,
  studioLocation_nr        VARCHAR(255) NOT NULL,
  studioLocation_longitude FLOAT(10,6) NOT NULL,
  studioLocation_latitude  FLOAT(10,6) NOT NULL,
  PRIMARY KEY (studioLocation_id)
);
COMMIT;

-- 13. Studios
CREATE TABLE Studios (
  studio_id       INT(10) NOT NULL AUTO_INCREMENT,
  studio_name     VARCHAR(255) NOT NULL,
  studioLocation_id INT(10) NOT NULL,
  PRIMARY KEY (studio_id),
  FOREIGN KEY (studioLocation_id) REFERENCES StudioLocations(studioLocation_id)
);
COMMIT;

-- 14. RehearsalRoomLocations
CREATE TABLE RehearsalRoomLocations (
  rehearsalRoomLocation_id       INT(10) NOT NULL AUTO_INCREMENT,
  rehearsalRoomLocation_name     VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_country  VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_county   VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_settlement VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_street    VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_nr        VARCHAR(255) NOT NULL,
  rehearsalRoomLocation_longitude FLOAT(10,6) NOT NULL,
  rehearsalRoomLocation_latitude  FLOAT(10,6) NOT NULL,
  PRIMARY KEY (rehearsalRoomLocation_id)
);
COMMIT;

-- 15. RehearsalRooms
CREATE TABLE RehearsalRooms (
  rehearsalRoom_id       INT(10) NOT NULL AUTO_INCREMENT,
  rehearsalRoom_name     VARCHAR(255) NOT NULL,
  RehearsalRoomLocation_id INT(10) NOT NULL,
  PRIMARY KEY (rehearsalRoom_id),
  FOREIGN KEY (rehearsalRoomLocation_id) REFERENCES RehearsalRoomLocations(rehearsalRoomLocation_id)
);
COMMIT;

-- 16. Practicing
CREATE TABLE Practicing (
  practicing_id       INT(10) NOT NULL AUTO_INCREMENT,
  rehearsalRoom_id    INT(10) NOT NULL,
  artist_id           INT(10) NOT NULL,
  practice_start      DATE NOT NULL,
  practice_end        DATE NOT NULL,
  PRIMARY KEY (practicing_id),
  FOREIGN KEY (rehearsalRoom_id) REFERENCES RehearsalRooms(rehearsalRoom_id),
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);
COMMIT;

-- 17. Genres
CREATE TABLE Genres (
  genre_id       INT(10) NOT NULL AUTO_INCREMENT,
  genre_name     VARCHAR(255) NOT NULL,
  PRIMARY KEY (genre_id)
);
COMMIT;

-- 18. Musics
CREATE TABLE Musics (
  music_id       INT(10) NOT NULL AUTO_INCREMENT,
  music_name     VARCHAR(255) NOT NULL,
  music_release_date DATE NOT NULL,
  PRIMARY KEY (music_id)
);
COMMIT;

-- 19. MusicsAwarded
CREATE TABLE MusicsAwarded (
  musicAwarded_id       INT(10) NOT NULL AUTO_INCREMENT,
  music_id      INT(10) NOT NULL,
  award_id      INT(10) NOT NULL,
  PRIMARY KEY (musicAwarded_id),
  FOREIGN KEY (music_id) REFERENCES Musics(music_id),
  FOREIGN KEY (award_id) REFERENCES Awards(award_id)
);
COMMIT;

-- 20. ProducersInGenres
CREATE TABLE ProducersInGenres (
  producerInGenre_id      		INTEGER NOT NULL AUTO_INCREMENT,
  producer_id     				INTEGER NOT NULL,
  genre_id						INTEGER NOT NULL,
  PRIMARY KEY (producerInGenre_id),
  FOREIGN KEY (producer_id)
  REFERENCES Producers(producer_id),
  FOREIGN KEY (genre_id)
  REFERENCES Genres(genre_id)
);

COMMIT;

-- 21. ProducersWWArtists
CREATE TABLE ProducersWWArtists (
  prodwart_id      				INTEGER NOT NULL AUTO_INCREMENT,
  producer_id     				INTEGER NOT NULL,
  artist_id						INTEGER NOT NULL,
  music_id						INTEGER NOT NULL,
  PRIMARY KEY (prodwart_id),
  FOREIGN KEY (producer_id) REFERENCES Producers(producer_id),
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
  FOREIGN KEY (music_id) REFERENCES Musics(music_id)
);
COMMIT;

-- 22. MusicsInGenres
CREATE TABLE MusicsInGenres (
  musicInGenre_id      		INT(10) AUTO_INCREMENT NOT NULL,
  music_id     				INT(10) NOT NULL,
  genre_id						INT(10) NOT NULL,
  PRIMARY KEY (musicInGenre_id),
  FOREIGN KEY (music_id) REFERENCES Musics(music_id),
  FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);
COMMIT;

-- 23. Recorded
CREATE TABLE Recorded (
  recorded_id      		INTEGER(10) NOT NULL AUTO_INCREMENT,
  prodwart_id     		INTEGER(10) NOT NULL,
  studio_id				INTEGER(10) NOT NULL,
  recorded_date			DATE NOT NULL,
  PRIMARY KEY (recorded_id),
  FOREIGN KEY (prodwart_id) REFERENCES ProducersWWArtists(prodwart_id),
  FOREIGN KEY (studio_id) REFERENCES Studios(studio_id)
);
COMMIT;

-- 24. ConcertLocations
CREATE TABLE ConcertsLocations (
concertLocation_id INT AUTO_INCREMENT NOT NULL,
concertLocation_country VARCHAR(255) NOT NULL,
concertLocation_county VARCHAR(255) NOT NULL,
concertLocation_settlement VARCHAR(255) NOT NULL,
concertLocation_street VARCHAR(255) NOT NULL,
concertLocation_nr VARCHAR(255) NOT NULL,
concertLocation_longitude FLOAT(10,6) NOT NULL,
concertLocation_latitude FLOAT(10,6) NOT NULL,
PRIMARY KEY (concertLocation_id));
COMMIT;

-- 25. Concerts
CREATE TABLE Concerts (
  concert_id      		INT(10) AUTO_INCREMENT NOT NULL,
  concert_name     		VARCHAR(255) NOT NULL,
  concertLocation_id	INT(10) NOT NULL,
  PRIMARY KEY (concert_id),
  FOREIGN KEY (concertLocation_id) REFERENCES ConcertsLocations(concertLocation_id)
);
COMMIT;

-- 26. Performances
CREATE TABLE Performances (
  performance_id      		INT(10) AUTO_INCREMENT NOT NULL,
  artist_id			INT(10) NOT NULL,
  music_id			INT(10) NOT NULL,
  performance_start DATE NOT NULL,
  performance_end 	DATE NOT NULL,
  PRIMARY KEY (performance_id),
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
  FOREIGN KEY (music_id) REFERENCES Musics(music_id)
);

COMMIT;

-- 27. Performing
CREATE TABLE Performing (
  performing_id      		INT(10) AUTO_INCREMENT NOT NULL,
  concert_id				INT(10) NOT NULL,
  performance_id			INT(10) NOT NULL,
  PRIMARY KEY (performing_id),
  FOREIGN KEY (concert_id) REFERENCES Concerts(concert_id),
  FOREIGN KEY (performance_id) REFERENCES Performances(performance_id)
);
COMMIT;