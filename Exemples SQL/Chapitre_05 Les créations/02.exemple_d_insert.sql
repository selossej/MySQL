INSERT INTO Client (
	ClientId, NomSociete, ContactNom, ContactTitre, Adresse, Ville, Region, CodePostal, Pays, Telephone, Fax)
SELECT
	UPPER(LEFT(
		REPLACE(
			REPLACE(
				REPLACE(NomSociete, ' ', '')
				, '-', '')
			, '''', '')
	, 5)), 
	NomSociete, ContactNom, ContactTitre, Adresse, Ville, Region, CodePostal, Pays, Telephone, Fax
FROM Fournisseur
WHERE NomSociete IN (
	SELECT NomSociete FROM Fournisseur
	EXCEPT
	SELECT NomSociete FROM Client
)
AND FournisseurId <> 28;


SELECT * FROM Client;