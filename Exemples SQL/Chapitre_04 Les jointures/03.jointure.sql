SELECT 
	co.CommandeId, co.DateCommande,
	cl.NomSociete,
	e.Nom as NomEmploye, e.Prenom as PrenomEmploye
FROM Commande AS co
JOIN Client AS cl ON co.ClientId = cl.ClientId
JOIN Employe AS e ON co.EmployeId = e.EmployeId;

SELECT 
	co.CommandeId, co.DateCommande,
	cl.NomSociete,
	e.Nom as NomEmploye, e.Prenom as PrenomEmploye
FROM Commande AS co
JOIN Client AS cl ON co.ClientId = cl.ClientId
JOIN Employe AS e ON co.EmployeId = e.EmployeId
ORDER BY e.EmployeId;

SELECT 
	co.CommandeId, co.DateCommande,
	cl.NomSociete,
	e.Nom, 
	e.Prenom
FROM Commande AS co
JOIN Client AS cl ON co.ClientId = cl.ClientId
JOIN Employe AS e ON co.EmployeId = e.EmployeId
ORDER BY e.EmployeId;

SELECT *
FROM Commande AS co1
JOIN Commande AS co2 
	ON co1.ClientId = co2.ClientId 
	AND co1.EmployeId <> co2.EmployeId
WHERE co1.CommandeId > co2.CommandeId;


SELECT 
	co1.CommandeId AS CommandeId1,
	co2.CommandeId AS CommandeId2,
	cl.NomSociete,
	concat(e1.Prenom, ' ') as Prénom1 ,e1.Nom as NomEmploye1,
	concat(e2.Prenom, ' ') as Prénom2 ,e2.Nom as NomEmploye2,
	s.NomService as ServiceEmploye2
FROM Commande AS co1
JOIN Commande AS co2 
	ON co1.ClientId = co2.ClientId 
	AND co1.EmployeId <> co2.EmployeId
JOIN Client AS cl ON co1.ClientId = cl.ClientId
JOIN Employe AS e1 ON co1.EmployeId = e1.EmployeId
JOIN Employe AS e2 ON co2.EmployeId = e2.EmployeId
	JOIN Service AS s ON e2.ServiceId = s.ServiceId
		AND e2.DivisionId = s.DivisionId
WHERE co1.CommandeId > co2.CommandeId;