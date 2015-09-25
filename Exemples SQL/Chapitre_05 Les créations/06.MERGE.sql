-- SQL Server
SELECT *
FROM Client
WHERE ClientId = 'PARIS';

MERGE INTO Client c
USING (SELECT 'PARIS' as ClientId, 'Paris Liqueurs' as NomSociete, 'Paris' as Ville, 'France' as Pays) source
ON (c.ClientId = source.ClientId)
WHEN MATCHED THEN
	UPDATE SET NomSociete = source.NomSociete
WHEN NOT MATCHED THEN
	INSERT (ClientId, NomSociete, Ville, Pays)
	VALUES (source.ClientId, source.NomSociete, source.Ville, source.Pays);
	
-- ORACLE
MERGE INTO Client c
USING (SELECT 'PARIS' as ClientId, 'Paris Liqueurs' as NomSociete, 'Paris' as Ville, 'France' as Pays FROM dual) source
ON (c.ClientId = source.ClientId)
WHEN MATCHED THEN
	UPDATE SET NomSociete = source.NomSociete
WHEN NOT MATCHED THEN
	INSERT (ClientId, NomSociete, Ville, Pays)
	VALUES (source.ClientId, source.NomSociete, source.Ville, source.Pays);
	
-- MySQL
DELETE FROM Client  WHERE ClientId = 'PARIS';

INSERT INTO Client (ClientId, NomSociete, Ville, Pays)
VALUES ('PARIS', 'Paris Liqueurs', 'Paris', 'France')
ON DUPLICATE KEY 
    UPDATE  NomSociete = 'Paris Liqueurs';  

