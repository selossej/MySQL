/********************************
        gestion des NULL
********************************/

-- SQL SERVER
-------------
--> ISNULL()
--> COALESCE() (nombre indéfini)

-- MYSQL
--------
--> IFNULL()
--> COALESCE() (nombre indéfini)

-- ORACLE
---------
--> NVL() = ISNULL, IFNULL
--> COALESCE() (nombre indéfini)

/********************************
         fonctions date
********************************/

SELECT GETDATE();
SELECT CURRENT_TIMESTAMP;

-- MYSQL
--> CURDATE()
--> CURRENT_TIMESTAMP

-- ORACLE
--> SYSDATE
--> CURRENT_TIMESTAMP

SELECT *, 
	YEAR(DateCommande) as Annee,
	DATEDIFF(DAY, DateCommande, DateDemandee) as [Difference],
	DATEADD(DAY, 30, DateCommande) as Plus30j
FROM Commande;