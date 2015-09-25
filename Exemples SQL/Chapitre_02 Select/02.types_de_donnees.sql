-- Le format chaîne de caractère

SELECT 'bonjour     '

varchar(50)
'bonjour plus long, trop long, décidément trop long'

NCHAR
NVARCHAR

SELECT N'你好'
-- UNICODE

-- Le format Décimal

SELECT 1
SELECT 1.5 -- DECIMAL / NUMERIC -- FLOAT / REAL
SELECT 1.5 -- DECIMAL / NUMERIC -- FLOAT / REAL


-- Le format Date

SELECT '21/11/2011'

SELECT *
FROM Commande;


select DateCommande
from commande;

SELECT DATE_FORMAT(DateCommande, "%d/%m/%y %l:%i %p") as 'Formatage de la date'
From Commande;

select datecommande, DATE_FORMAT(NOW(),'%b %d %Y %h:%i %p') as 'date du jour',
 DATE_FORMAT(datecommande,'%b %d %Y %h:%i %p') as 'date de la commande formatée'
From Commande;

-- exemple de formatage:

-- DATE_FORMAT(NOW(),'%b %d %Y %h:%i %p') --> Nov 04 2014 11:45 PM
-- DATE_FORMAT(NOW(),'%m-%d-%Y') --> 11-04-2014
-- DATE_FORMAT(NOW(),'%d %b %y') --> 04 Nov 14
-- DATE_FORMAT(NOW(),'%d %b %Y %T:%f') --> 04 Nov 2014 11:45:34:243






