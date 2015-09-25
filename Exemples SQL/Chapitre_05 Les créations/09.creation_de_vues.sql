CREATE VIEW MesClients
AS
SELECT NomSociete, UPPER(ContactNom) as NomMajuscule
FROM Client;

SELECT *
FROM mesclients;

