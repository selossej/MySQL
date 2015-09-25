


SELECT DateCommande, 
	YEAR(DateCommande) as Annee,
    Month (DateCommande) as Mois,
    Day (DateCommande) as Jour
	  
FROM Commande;

SELECT DateCommande, 
	concat (Day (DateCommande),
    '/', Month (DateCommande),
    '/',YEAR(DateCommande)) as 'Date Commande'    
FROM Commande;




