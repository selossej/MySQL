SELECT CONCAT(Ville, ' ', Region)
FROM Client;

SELECT CONCAT(Ville, ' ', IFNULL(Region, 'Inconnu'))
FROM Client;

SELECT *
FROM Client;

SELECT CONCAT(Ville, ' ', COALESCE(Region, Pays, 'Inconnu'))
FROM Client;

Select coalesce(Region, ' ', Ville)
From Client;

Select coalesce(Ville, ' ', Region)
From Client;
