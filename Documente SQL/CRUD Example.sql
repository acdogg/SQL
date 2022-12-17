/*CREATE Table*/
CREATE TABLE DetaliiPersoane(
	ID int,
	Nume varchar(255),
	Prenume varchar(255),
	Adresa varchar (255),
	Oras varchar (255)
);

/*INSERT INTO*/
INSERT INTO DetaliiPersoane (ID,Nume, Prenume, Adresa, Oras)
VALUES (1, 'Niculae', 'Andrei', 'Strada Depozitului', 'Bucuresti');

/*UPDATE*/
UPDATE DetaliiPersoane
SET Oras = 'Sibiu', Adresa = 'Strada Mare'
WHERE ID = 1;

/*DELETE row*/
DELETE FROM DetaliiPersoane WHERE ID = 1;

INSERT INTO DetaliiPersoane (ID, Nume, Prenume, Adresa, Oras)
VALUES (1, 'Niculae', 'Andrei', 'Strada Depozitului', 'Bucuresti');

INSERT INTO DetaliiPersoane (ID, Nume, Prenume, Adresa, Oras)
VALUES (2, 'Hancu', 'Daniela', 'Strada Mare', 'Brasov');

/*DELETE all rows*/
DELETE FROM DetaliiPersoane