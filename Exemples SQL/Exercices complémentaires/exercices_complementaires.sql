
-- Where ContactNom ='Ana Trujillo'

Select 1+2 as 'somme de deux chiffres';

-- '1' + '2'
select concat('1', '2');
select concat(1, 2);

select concat(NomSociete, ', ',ContactNom) as 'Nom Société et NOm'
From Client;

select datecommande,

year(datecommande) as 'année',
month(DateCommande) as 'mois',
day(DateCommande) as 'jour'

from commande;

-- les fonctions et formatages de dates

SELECT DateCommande, 
	concat (Day (DateCommande),
    '/', Month (DateCommande),
    '/',YEAR (DateCommande)) as 'Date Commande'    
FROM Commande;

select datecommande, DATE_FORMAT(NOW(),'%b %d %Y %h:%i %p') as 'date du jour',
 DATE_FORMAT(datecommande,'%b %d %Y %h:%i %p') as 'date de la commande formatée'
From Commande;

SELECT DATE_FORMAT(DateCommande, "%d/%m/%y %l:%i %p") as 'Formatage de la date'
From Commande;

select *
from commande
where Datecommande NOt Between '1996-07-01' and '1996-07-31';

Select *
from employe
where Prenom NOt IN ('André','Anne');

-- Les limitations

-- Sélectionne 2 employés à partir du quatrième 
select *
from employe limit 2 offset 4;

-- Sélectionne 2 employés à partir du troisième 
select *
from employe limit 2 offset 2;


-- reprend uniquement les deux premiers caractères
select *
from employe limit 2;

-- Les fonctions Somme, Maximum, minimum, compteur, moyenne.

select EmployeId, count(employeid)
from employe;
select EmployeId, sum(employeid)
from employe;
select EmployeId, avg(employeid)
from employe;

select EmployeId, max(employeid)
from employe;

select EmployeId, min(employeid)
from employe;

select EmployeId, std(employeid)
from employe;

-- Les jointures

SELECT 
	co.CommandeId, co.DateCommande,
	cl.NomSociete,
	e.Nom as NomEmploye, e.Prenom as PrenomEmploye
FROM Commande AS co
JOIN Client AS cl ON co.ClientId = cl.ClientId
JOIN Employe AS e ON co.EmployeId = e.EmployeId;


SELECT *
FROM Commande AS co1
JOIN Commande AS co2 
	ON co1.ClientId = co2.ClientId 
	AND co1.EmployeId <> co2.EmployeId
WHERE co1.CommandeId > co2.CommandeId;


insert into client(clientid, NomSociete, Ville) values ('Hervé', 'CRA', 'Bruxelles');
insert into client(clientid, NomSociete, Ville) values ('ALFKI', 'CRA', 'Bruxelles');

select *
from client;

update client
set ville= upper(Ville);

Update matable
Set Adresse='        ',
	Region='      ',
    CodePostal='     '
Where clientid='Hervé';
    
