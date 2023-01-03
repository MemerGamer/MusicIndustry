-- CREATE TABLES SQL
-- Kovács Bálit-Hunor
-- Informatika II. D

-- TOTAL TABLES: 27

-- 1. Oldest Music Publisher in the database
SELECT * FROM PUBLISHERS
ORDER BY PUBLISHER_FORMATIONDATE
FETCH FIRST 1 ROW ONLY;

-- 2. Publishers who worked with Kanye West;
SELECT PUBLISHER_NAME "Worked with Kanye" FROM PUBLISHERS
WHERE PUBLISHER_ID  in (
	SELECT PUBLISHER_ID FROM PRODUCERSPUBLISHING
		WHERE PRODUCER_ID = (
		SELECT PRODUCER_ID  FROM PRODUCERS 
		WHERE PRODUCER_NAME LIKE 'Kanye West'));
	
-- 3. How many songs are named after christmas?
SELECT COUNT(*) "Nr. of music about Christmas" FROM MUSICS
WHERE MUSIC_NAME LIKE '%hristmas%';	
