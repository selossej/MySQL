-- ceci fonctionne, mais si vous êtes attentif aux performances, choisissez plutôt la deuxième version
SELECT *
FROM Commande
WHERE MONTH(DateCommande) = 7
AND YEAR(DateCommande) = 1996;

SELECT *
FROM Commande
WHERE DateCommande BETWEEN '1996-07-01' AND '1996-07-31 23:59:59';

-- Cette syntaxe est un peu lourde, vous pouvez préférer le IN
SELECT *
FROM Employe
WHERE Prenom = 'André'
OR Prenom = 'Anne';

SELECT *
FROM Employe
WHERE Prenom IN ('André', 'Anne');

-- Pour indiquer des rangées, utilisez le BETWEEN. Attention de bien commencer par la valeur la plus petite
SELECT *
FROM Employe
WHERE EmployeId BETWEEN 2 AND 6;

SELECT *
FROM Employe
WHERE EmployeId >= 6 
AND EmployeId <= 2;

-- On peut inverser la clause avec un NOT
SELECT *
FROM Employe
WHERE Prenom NOT IN ('André', 'Anne');

SELECT *
FROM Employe
WHERE EmployeId NOT BETWEEN 2 AND 6;

-- pour les recherches de chaînes, le LIKE est bien pratique
SELECT *
FROM Employe
WHERE Prenom LIKE '%an%';

SELECT *
FROM Employe
WHERE Prenom LIKE '%anne';

SELECT *
FROM Employe
WHERE Prenom regexp 'anne'; -- ou Rlike 

