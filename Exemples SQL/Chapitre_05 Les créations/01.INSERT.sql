-- insertion simple
INSERT INTO Client (ClientId, NomSociete, Ville, Pays)
VALUES ('RRRR', 'Video2Brain', 'Graz', 'Autriche');

-- vérifions
SELECT *
FROM Client
WHERE ClientId = 'RRRR';

-- insertion avec toutes les colonnes
INSERT INTO Client
VALUES ('VIDE2', 'Video2Brain', 'Dupuis Chantal', 'Responsable de Achats', 
	'Strasse' , 'Graz', NULL, '8020', 'Autriche', NULL, NULL);

-- insertion multiple
INSERT INTO Client (ClientId, NomSociete, Ville, Pays)
VALUES ('PATAT', 'Patate Sublime', 'Toulouse', 'France'),
       ('GRUYE', 'Gruyere Fameux', 'Fribourg', 'Suisse');


SELECT * FROM Transporteur;

INSERT INTO Transporteur (NomSociete, Telephone)
VALUES ('Speedy Delivery', NULL);

-- SQL Server
SELECT SCOPE_IDENTITY()
-- MySQL
SELECT LAST_INSERT_ID()

-- attention aux apostrophes !
INSERT INTO Client (ClientId, NomSociete, Ville, Pays)
VALUES ('PATAT', 'Patate d''argent', 'Toulouse', 'France');

SELECT 'd''argent'
SELECT REPLACE('d''argent', '''', '''''');

-- insertion à partir d'un SELECT
INSERT INTO dbo.Transporteur (NomSociete, Telephone)
SELECT NomSociete, Telephone 
FROM Fournisseur
WHERE FournisseurId <= 5;

SELECT * FROM Transporteur