DELETE FROM Client
WHERE ClientId = 'PARIS';

SELECT * FROM Client;

DELETE FROM LigneCommandes
WHERE CommandeId IN (
	SELECT CommandeId
	FROM Commande
	WHERE ClientId = 'ALFKI');

DELETE FROM Commande
WHERE ClientId = 'ALFKI';

DELETE FROM Client
WHERE ClientId = 'ALFKI';