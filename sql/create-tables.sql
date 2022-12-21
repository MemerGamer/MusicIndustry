-- CREATE TABLES SQL
-- Kovács Bálit-Hunor
-- Informatika II. D

-- TOTAL TABLES: 27

-- 1. Publisher 
CREATE SEQUENCE publ_seq START WITH 1;

CREATE TABLE Publishers (
  publisher_id              NUMBER(10)  DEFAULT publ_seq.nextval NOT NULL,
  publisher_name          	VARCHAR2(255)  NOT NULL);

ALTER TABLE Publishers ADD (
  CONSTRAINT publ_pk PRIMARY KEY (publisher_id));
COMMIT;

ALTER TABLE Publishers
ADD publisher_formationDate DATE;

-- 2. Producers 
CREATE SEQUENCE prod_seq START WITH 1;

CREATE TABLE Producers (
  producer_id              NUMBER(10)  DEFAULT prod_seq.nextval NOT NULL,
  producer_name            VARCHAR2(255)  NOT NULL);

ALTER TABLE Producers ADD (
  CONSTRAINT prod_pk PRIMARY KEY (producer_id));
COMMIT;

-- 3. ProducersPublishing
CREATE SEQUENCE prodpubl_seq START WITH 1;

CREATE TABLE ProducersPublishing (
  prodpub_id              	NUMBER(10)  DEFAULT publ_seq.nextval NOT NULL,
  producer_id				NUMBER(10)	NOT NULL,
  publisher_id          	NUMBER(10)  NOT NULL);

ALTER TABLE ProducersPublishing ADD (
  CONSTRAINT prodpub_pk PRIMARY KEY (prodpub_id),
  CONSTRAINT prod_fk FOREIGN KEY (producer_id)
  REFERENCES Producers(producer_id),
  CONSTRAINT publ_fk FOREIGN KEY (publisher_id)
  REFERENCES Publishers(publisher_id));
COMMIT;
