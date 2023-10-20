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

--On affiche les valeurs de la table 'Produits'
DESCRIBE produits;