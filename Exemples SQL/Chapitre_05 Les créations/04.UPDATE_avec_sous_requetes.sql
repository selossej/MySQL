SELECT ClientId, COUNT(*)
FROM Commande
GROUP BY ClientId
HAVING COUNT(*) > 100;

SELECT *
FROM Commande co
JOIN (SELECT ClientId, COUNT(*) as cnt FROM Commande GROUP BY ClientId) AS cl
	ON co.ClientId = cl.ClientId
WHERE cl.cnt > 100;

UPDATE LigneCommandes
SET Remise = 0.15
WHERE CommandeId IN (
	SELECT CommandeId
	FROM Commande co
	JOIN (SELECT ClientId, COUNT(*) as cnt FROM Commande GROUP BY ClientId) AS cl
		ON co.ClientId = cl.ClientId
	WHERE cl.cnt > 100
);

SELECT COUNT(*) as 'compteur'
FROM LigneCommandes
WHERE Remise = 0.15;

UPDATE LigneCommandes
SET Remise = CASE 
	WHEN (
		SELECT COUNT(*)
		FROM Commande
		WHERE ClientId = (
				SELECT ClientId FROM Commande WHERE CommandeId = LigneCommandes.CommandeId
			)	
	) > 200 THEN .20
	ELSE .15
	END
WHERE CommandeId IN (
	SELECT CommandeId
	FROM Commande co
	JOIN (SELECT ClientId, COUNT(*) as cnt FROM Commande GROUP BY ClientId) AS cl
		ON co.ClientId = cl.ClientId
	WHERE cl.cnt > 100
);

SELECT COUNT(*) FROM LigneCommandes WHERE Remise = .20
