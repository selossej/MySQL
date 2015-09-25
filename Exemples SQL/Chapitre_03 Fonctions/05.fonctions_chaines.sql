

SELECT ContactNom,
	INSTR(ContactNom, ' '), 
    -- chercher la position d'un espace, une virgule dans une chaîne de caractère
    left(ContactNom, 3),
    -- extrait 3 caractères de la chaîne de caractère à partir de la gauche
    right(ContactNom,3), 
    -- extrait 3 caractères de la chaîne de caractère à partir de la droite
	LEFT(ContactNom, INSTR(ContactNom, ' ')- 1), 
    -- extrait le nombre de caractère défini par la position de l'espace -1 à partir de la gauche
	SUBSTRING(ContactNom, INSTR(ContactNom, ' ')+ 1, 100), 
    -- récupère à l'intérieur d'une chaîne de caractère d'une valeur de 100 dans l'exemple, 
    -- à partir de la position de l'espace +1
    -- comme il est impossible de récupérer le nbr exact de caractère à partir de la droite,
    -- des caractères vides sont ajoutés.
	length(ContactNom), 
    -- récupère le nombre de caractère de la chaîne de caractère. 
    -- Longueur de la chaîne de caractère. 
    -- Souvent utilisé pour déterminer si une chaîne de caractère est vide ou non.
    LTRIM(SUBSTRING(ContactNom, INSTR(ContactNom, ' '), 100)) 
    -- permet d'effacer les caratères vides devant et derrière une chaîne de caractère.
FROM Client;

