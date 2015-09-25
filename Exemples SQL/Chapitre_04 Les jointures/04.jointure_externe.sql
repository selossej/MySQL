-- cette joniture ne retourne pas tous les clients. Où est parti PARIS ?
SELECT *
FROM Client cl
JOIN Commande co ON cl.ClientId = co.ClientId
WHERE cl.ClientId IN ('OTTIK', 'PARIS');

-- c'est pourtant bien un client
SELECT *
FROM Client cl
WHERE ClientId = 'PARIS';

-- mais il n'a pas passé de commandes
SELECT *
FROM Commande co
WHERE co.ClientId IN ('PARIS');

-- la jointure interne ne le retourne donc pas
SELECT *
FROM Client cl
INNER JOIN Commande co ON cl.ClientId = co.ClientId
WHERE cl.ClientId IN ('OTTIK', 'PARIS');

-- il faut faire une jointure externe
SELECT *
FROM Client cl 
LEFT JOIN Commande co ON cl.ClientId = co.ClientId
WHERE cl.ClientId IN ('OTTIK', 'PARIS');

-- avec la jointure externe, je peut trouver les orphelins facilement
SELECT cl.*
FROM Client cl 
LEFT JOIN Commande co ON cl.ClientId = co.ClientId
WHERE co.CommandeId IS NULL;

-- mais attention, pour mélanger jointures internes et externes,
-- il faut utiliser une des deux techniques ci-dessous
SELECT *
FROM Client cl 
LEFT OUTER JOIN Commande co ON cl.ClientId = co.ClientId
LEFT OUTER JOIN LigneCommandes lc ON co.CommandeId = lc.CommandeId
WHERE cl.ClientId = 'PARIS';

SELECT *
FROM Client cl 
LEFT OUTER JOIN (Commande co
INNER JOIN LigneCommandes lc ON co.CommandeId = lc.CommandeId) ON cl.ClientId = co.ClientId
WHERE cl.ClientId = 'PARIS';
