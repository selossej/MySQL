SELECT 
	CommandeId,
	format(CommandeId / 2,2, 'fr_BE') as 'Fonction Format', 
    -- format CommandeId/2 pour l'afficher avec 2 caractères après la virgule
	Transport, 
	CEILING(Transport) as 'Fonction Ceiling', -- arrondi à la valeur supérieur
	FLOOR(Transport) as 'Fonction Floor', -- arrondi à la valeur inférieur
	ROUND(Transport, 3) as 'Fonction Round'-- arrondi à trois décimal après la virgule
FROM Commande;

