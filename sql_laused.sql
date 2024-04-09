MS SQL Server management studio

Server Name: localdb/(...) ja Windows Authentication

CREATE DATABASE perekonnanimiTITpv22;

--tabeli loomine
--primary key - annab unikaalne väärtus
USE perekonnanimiTITpv22;
CREATE TABLE oppeaine(
oppeaineID int Primary key identity(1,1),
nimetus varchar(50) UNIQUE,
kestvus int NOT NULL,
kirjeldus Text,
algus_kuupaev date);
--Kuva/ Näita tabeli
SELECT * FROM oppeaine;

--ANdmete lisamine tabeli sisse
INSERT INTO oppeaine(
nimetus, kestvus, algus_kuupaev, kirjeldus) 
VALUES (
'Matemaatika', 200, '2024-01-9', 'Üldainete moodul');
SELECT * FROM oppeaine;


