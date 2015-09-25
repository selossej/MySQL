CREATE TABLE Collation (
	texte varchar(30) COLLATE latin1_general_ci NOT NULL UNIQUE
);


INSERT INTO Collation VALUES ('Bénédicte');
INSERT INTO Collation VALUES ('Benedicte');
INSERT INTO Collation VALUES ('Botin');
INSERT INTO Collation VALUES ('andré');
INSERT INTO Collation VALUES ('andrei');
INSERT INTO Collation VALUES ('Azimov');
INSERT INTO Collation VALUES ('zigoto');
INSERT INTO Collation VALUES ('Zapotev');
INSERT INTO Collation VALUES ('Zapötev');

SELECT * FROM Collation ORDER BY texte;

/* ORACLE
SELECT *
FROM Collation
ORDER BY NLSSORT(text, 'NLS_SORT = Latin_CI')
*/

DROP TABLE Collation;

SELECT * FROM Collation 
WHERE texte COLLATE french_CI_AS = 'ZAPOTEV';
