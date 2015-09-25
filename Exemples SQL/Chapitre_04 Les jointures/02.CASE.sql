-- première syntaxe du CASE
SELECT 
	NomSociete,
	Pays,
	CASE Pays
		WHEN 'Germany' THEN 'Tempéré'
		WHEN 'France'  THEN 'Tempéré'
		WHEN 'Mexico'  THEN 'Chaud'
		WHEN 'Canada'  THEN 'Frais'
		WHEN 'UK'      THEN 'Frais'
		ELSE 'Ne sait pas'
	END
    as Climat
FROM Client;

-- deuxième syntaxe du CASE
SELECT 
	NomSociete,
	Pays,
	Region,
	CASE 
		WHEN Pays IN ('Germany', 'France') OR Region = 'BC' THEN 'Tempéré'
		WHEN Pays IN ('Mexico', 'Spain')  THEN 'Chaud'
		WHEN Pays IN ('Canada', 'UK')     THEN 'Frais'
		ELSE 'Ne sait pas'
	END
    as climat
FROM Client;

-- on peut aussi utiliser un CASE dans l'ORDER BY
SELECT 
	NomSociete,
	Pays,
	Region
FROM Client
ORDER BY 
	CASE Pays
		WHEN 'France' THEN 1
		ELSE 2
	END,
	Pays;
