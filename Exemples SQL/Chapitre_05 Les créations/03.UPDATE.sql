SELECT * FROM Client WHERE clientId = 'PARIS';

UPDATE Client
SET Ville = UPPER(Ville);


UPDATE Client
SET	Adresse = '12, rue du Commerce',
	Region = 'IDF',
	CodePostal = '75015',
	Telephone = NULL,
	Fax = NULL
WHERE clientId = 'PARIS';

UPDATE Employe
SET Civilite = 
	CASE Civilite
		WHEN 'Ms.'   THEN 'Mme'
		WHEN 'Mrs.'  THEN 'Mlle'
		WHEN 'Mr.'   THEN 'M.'
		ELSE Civilite
	END;

SELECT * FROM Employe;