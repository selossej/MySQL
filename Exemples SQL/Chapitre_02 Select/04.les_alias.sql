/*
3 SELECT NomSociete, Adresse, Pays, Ville
1 FROM Client
2 WHERE Pays <= 'UK'
4 ORDER BY Pays, Ville, Adresse;
*/

-- pour commenter une ligne
/*  pour commander une grande partie du code */ 

SELECT c.NomSociete, c.Adresse, c.Pays, c.Ville -- commentaire
FROM Client AS c
WHERE c.Pays <= 'UK'
ORDER BY c.Pays, c.Ville, c.Adresse;

SELECT 1 as Nombre, c.NomSociete AS nom, c.Adresse, c.Ville as vi
FROM Client AS c
WHERE c.Pays <= 'UK'
ORDER BY c.Pays, vi, c.Adresse;

SELECT 1 as Nombre, c.NomSociete AS nom, concat(c.Adresse,' ', c.Ville, ' ', c.Pays) as AdresseComplete
FROM Client AS c
WHERE c.Pays <= 'UK'
ORDER BY AdresseComplete;

SELECT 1 as Nombre, c.NomSociete AS nom, concat(c.Adresse,' ', c.Ville, ' ', c.Pays) as AdresseComplete
FROM Client AS c
WHERE concat(c.Adresse,' ', c.Ville, ' ', c.Pays) like '%Commerce%'; 
-- la fonction Like permet de selectionner toute les données contenant 'commande'.
-- il est possible de placer le % devant ou derrière la données que nous cherchons.


