USE Ventes;

SELECT *
FROM Client;
-- = 93 lignes

SELECT *
FROM Client
WHERE Region = 'SP'
OR Region <> 'SP';
-- = 31 lignes. Où sont passées les autres ? Ce sont des NULL ...

/*
logique à trois états
VRAI
FAUX
INCONNU
*/

-- ceci n'est pas valide
SELECT *
FROM Client
WHERE Region = NULL;

-- il faut faire ceci à la place
SELECT *
FROM Client
WHERE Region IS NULL;

SELECT *
FROM Client
WHERE Region IS NOT NULL;


SELECT *
FROM Client
WHERE Region = 'SP'
OR Region <> 'SP'
OR Region IS NULL;

-- les NULL mangent le reste
SELECT ville , region, concat (Ville,', ', Region)
FROM Client;

-- il faut donc les gérer à l'aide de fonctions

-- La fonction IFNULL  permet l’affichage des Régions même si la valeur de la Région est Null.
-- La fonction COALESCE  permet l’affichage de plusieurs champs même si la valeur de la Région est Null.

SELECT Ville, region, concat(Ville, ' ', IFNULL(Region, 'Inconnu'))
FROM Client;

SELECT Ville, region, CONCAT(Ville, ' ', coalesce(Region, Ville, 'Inconnu'))
FROM Client;

SELECT coalesce(Region, Ville, 'Inconnu')
From Client;


SELECT Ville + ' ' + COALESCE(Region, Pays, 'Inconnu')
FROM Client;