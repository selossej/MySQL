-- Solution exercice db-film--
-- ------------------------ --

-- Comment créer un schéma avec MySQL?

create schema if not exists db_film default character set = 'utf8mb4' ;

-- Comment peut-on créer ces tables avec MySQL?

CREATE TABLE films (idFilm INT not null AUTO_INCREMENT, Titre VARCHAR (255) not null ,
 Réalisateur VARCHAR (255) not null , PRIMARY KEY (idFilm));
 
CREATE TABLE acteurs (idActeur INT not null AUTO_INCREMENT, 
Nom VARCHAR (255) not null , Prénom VARCHAR (255) not null , PRIMARY KEY (idActeur));

CREATE TABLE role (idActeur INT not null, idFilm INT not null , Personnage VARCHAR (255));

-- Comment peut-on insérer les données?

INSERT INTO films (Titre,Réalisateur) VALUES ('Matrix','Réalisateur de Matrix');
INSERT INTO films (Titre,Réalisateur) VALUES ('La soupe aux choux','Réalisateur de la soupe aux choux');
INSERT INTO acteurs (Nom,Prénom) VALUES ('Dupont','Paul');
INSERT INTO acteurs (Nom,Prénom) VALUES ('Durand','Jean');
INSERT INTO acteurs (Nom,Prénom) VALUES ('Durand','Jeanne');
INSERT INTO role (idActeur,idFilm,Personnage) VALUES ('1','1','Neo');
INSERT INTO role (idActeur,idFilm,Personnage) VALUES ('2','1','Simone');
INSERT INTO role (idActeur,idFilm,Personnage) VALUES ('3','2','Extra-terrestre');

-- Comment supprimer les données ?

-- Supprimer  le film "La soupe aux choux", il y a plusieurs possibilités. Indiquez 2 solutions.

DELETE FROM films where idFilm=2;
DELETE FROM films where Titre='La soupe aux choux';


-- Comment modifier des données ?

-- Changer le nom du réalisateur de Matrix, soit par id soit par titre. Indiquez  2 solutions.

UPDATE films SET Réalisateur='John Woo' where idFilm=1;
UPDATE films SET Réalisateur='John Woo' where Réalisateur='Réalisateur de Matrix';

-- Avant de traiter les données réinsérer la totalité des données.

INSERT INTO films (Titre,Réalisateur) VALUES ('La soupe aux choux','Réalisateur de la soupe aux choux');
UPDATE films SET Réalisateur='Réalisateur de Matrix' where idFilm=1;

-- Comment traiter les données ?

-- Comptons les éléments, par exemple comptons le nombre de films de notre BD et indiquer comme titre de colonne ‘Nb de film’ .

SELECT COUNT(*) as 'Nb de film' FROM films ;

-- Créons une vue de cette fonction Count comme compteur

SELECT * FROM `db-film`.compteur;

-- Récupérons maintenant tous les titres de films.

SELECT titre FROM films;

-- Récupérer en le concaténant le Nom et le Prénom de la Table acteur comme Nom complet?

SELECT *, concat(Nom ,' ', Prénom) as 'Nom complet'
From acteurs;

-- Beaucoup plus dificile, affichons l'ensemble des couple titre, nom de l'acteur, prénom de l'acteur et rôle joué.

SELECT f.titre,a.nom,a.prénom,r.personnage
FROM films f,acteurs a,role r 
WHERE r.idFilm=f.idFilm and a.idActeur=r.idActeur;



