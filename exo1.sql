-- Exercice 1 SQL

--Création de la database exo1 si ellle n'hesiste pas, en utf8
CREATE DATABASE IF NOT EXISTS exo1 CHARACTER SET="utf8" COLLATE="utf8_general_ci";

--On rentre dans la database
USE exo1;

--Création table 'Produits'
CREATE TABLE produits (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(100),
    Description TEXT,
    Prix DECIMAL(10, 2),
    Stock INT,
    Fabricant VARCHAR(50),
    DateAjout DATE,
    Categorie VARCHAR(50),
    EnStock BOOLEAN,
    Poids DECIMAL(7, 2),
    DateExpiration DATE
);

--Ajouts d'articles
INSERT INTO produits (Nom, Description, Prix, Stock, Fabricant, DateAjout, Categorie, EnStock, Poids, DateExpiration)
VALUES
    ('Téléviseur LED 55 pouces', 'Téléviseur haute définition', 499.99, 10, 'Sony', '2023-10-20', 'Électronique', 1, 20.5, '2024-12-31'),
    ('Ordinateur portable', 'Ordinateur portable léger et puissant', 899.99, 5, 'Dell', '2023-10-21', 'Informatique', 1, 5.7, '2024-11-30'),
    ('Cafetière programmable', 'Cafetière avec minuteur', 39.99, 20, 'Hamilton Beach', '2023-10-22', 'Électroménager', 1, 3.2, '2024-10-31'),
    ('Livre "Le Seigneur des Anneaux"', 'Roman de fantasy épique', 12.99, 50, 'Houghton Mifflin', '2023-10-23', 'Littérature', 1, 1.2, NULL),
    ('Brosse à dents électrique', 'Brosse à dents rechargeable', 29.99, 15, 'Oral-B', '2023-10-24', 'Santé et hygiène', 1, 0.3, '2024-09-30');

--On affiche les valeurs de la table 'Produits'
DESCRIBE produits;

--Vue des entrées
SELECT * FROM produits;

--Supprsion database & table
DROP TABLE IF EXISTS produits;

DROP DATABASE IF EXISTS exo1;