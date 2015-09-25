SELECT *
FROM Client
WHERE Pays = 'UK'
AND Ville = 'London';

SELECT NomSociete, Adresse, Ville
FROM Client
WHERE Pays = 'UK'
OR Pays = 'France';

SELECT NomSociete, Adresse, Ville
FROM Client
WHERE Pays <> 'UK'
AND Pays <> 'France';

SELECT NomSociete, Adresse, Ville
FROM Client
WHERE Pays <> 'UK'
OR Pays <> 'France';

SELECT NomSociete, Adresse, Ville, Pays
FROM Client
WHERE Pays >= 'UK';

SELECT NomSociete, Adresse, Pays, Ville
FROM Client
WHERE Pays <= 'UK'
ORDER BY Pays, Ville, Adresse;

SELECT ClientId, NomSociete, Adresse, Pays, Ville
FROM Client
WHERE Pays <= 'UK';

------------------------------------
--   l'importance de l'ORDER BY   --
------------------------------------

CREATE TABLE test (nb int);

INSERT INTO test VALUES (1);
INSERT INTO test VALUES (2);
INSERT INTO test VALUES (3);
INSERT INTO test VALUES (4);
INSERT INTO test VALUES (5);
INSERT INTO test VALUES (6);

SELECT * FROM test;

DELETE FROM test WHERE nb = 4;

SELECT * FROM test;

INSERT INTO test VALUES (7);

SELECT * FROM test;

SELECT * 
FROM test
ORDER BY nb;

DROP TABLE test;