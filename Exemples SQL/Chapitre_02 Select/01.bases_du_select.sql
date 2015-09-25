SELECT NomSociete, ContactNom
FROM Client;

-- sélectionne toute la base de données
Select * 
from Client;

-- utiliser l'assistant Form Editor pour faire du SQL
UPDATE `exemple-mysql`.`Client` SET `ContactTitre`='Marketing' WHERE `ClientId`='ALFKI';
UPDATE `exemple-mysql`.`Client` SET `Pays`='Belgique' WHERE `ClientId`='ANATR';
INSERT INTO `exemple-mysql`.`Client` (`NomSociete`, `ContactNom`, `ContactTitre`, `Adresse`, `Ville`) VALUES ('Pixystree', 'Selosse Jérôme', 'Direction', 'Rue beeckman 1180 Uccle', 'Bruxelles');

SELECT NomSociete, ContactNom
FROM Client
WHERE ContactNom = 'Aria Cruz';

SELECT 1 + 2;
SELECT '1' + '2';

SELECT concat(NomSociete, ', ', ContactNom) as 'concat de NomSociété et ContactNOm'
FROM Client;

SELECT PrixUnitaire * QuantiteEnStock as 'valeur stock'
FROM Produit;