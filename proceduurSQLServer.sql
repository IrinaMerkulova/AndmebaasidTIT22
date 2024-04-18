CREATE TABLE tootaja(
id int primary key identity(1,1),
eesnimi varchar(25),
perenimi varchar(25),
isikukood varchar(11));
select * from tootaja;

-- protseduuri loomine
CREATE Procedure tootajaLisamine
@uusnimi varchar(25),
@uusPerenimi varchar(25)
as
BEGIN
	INSERT INTO tootaja(eesnimi, perenimi)
	VALUES (@uusnimi, @uusPerenimi);
	select * from tootaja;
END;
--protseduuri käivitamine
EXEC tootajaLisamine 'Leera', 'Lukina', '123566';

--protseduur, mis uuuendab tootaja andmed
CREATE Procedure tootajaUuendus
@uusperenimi varchar(25),
@id int
AS
BEGIN
	select * from tootaja;
	update tootaja SET perenimi=@uusperenimi
	Where id=@id;
	select * from tootaja;
END;
--käivitamine
EXEC tootajaUuendus 'Test', 1;


--proc mis kustutab sisestatud id järgi
CREATE PROCEDURE tootajaKustuta
@id int
AS
BEGIN
select * from tootaja;
	DELETE FROM tootaja
	WHERE id=@id;
	select * from tootaja;
END;

--käivitamine
EXEC tootajaKustuta 1;
