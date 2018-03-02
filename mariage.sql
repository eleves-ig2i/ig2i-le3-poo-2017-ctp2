-----------------------------------------------------------------
-- Supression des tables
-----------------------------------------------------------------
DROP TABLE invite;
DROP TABLE mariage;
DROP TABLE categorie;
DROP TABLE adore;
DROP TABLE deteste;


-----------------------------------------------------------------
-- Creation des tables
-----------------------------------------------------------------
CREATE TABLE categorie (
    nCategorie INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(50) NOT NULL,
    CONSTRAINT uk_categorie UNIQUE(nom)
);

CREATE TABLE invite (
  nInvite INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  nom VARCHAR(255) NOT NULL,
  prenom VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  nMariage INT NOT NULL,
  nCategorie INT NOT NULL
);

CREATE TABLE mariage (
    nMariage INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(50) NOT NULL,
    nMarie INT NOT NULL,
    nMariee INT NOT NULL,
    CONSTRAINT uk_mariage UNIQUE(nMarie, nMariee)
);

CREATE TABLE adore (
    nAdore INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nInvite INT NOT NULL,
    inviteAdore INT NOT NULL,
    CONSTRAINT uk_adore UNIQUE(nInvite, inviteAdore)
);

CREATE TABLE deteste (
    nDeteste INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nInvite INT NOT NULL,
    inviteDeteste INT NOT NULL,
    CONSTRAINT uk_deteste UNIQUE(nInvite, inviteDeteste)
);



-----------------------------------------------------------------
-- Insertions : jeu de donnees avec 2 mariages
-----------------------------------------------------------------

-- Insert categories

INSERT INTO categorie (nom) VALUES ('maries');
INSERT INTO categorie (nom) VALUES ('amis');
INSERT INTO categorie (nom) VALUES ('famille marie');
INSERT INTO categorie (nom) VALUES ('famille mariee');
INSERT INTO categorie (nom) VALUES ('temoins');




-- Insert invites

INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Le Boeuf','Christine', 29,1,(SELECT nCategorie FROM categorie WHERE nom = 'maries'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Le Coq','Martin',31,1,(SELECT nCategorie FROM categorie WHERE nom = 'maries'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Powell','Eugenia',67,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Sims','Kieran',5,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Copeland','Chandler',93,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Moore','Jade',25,1,(SELECT nCategorie FROM categorie WHERE nom = 'temoins'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Sloan','Zeus',1,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Bowman','Tiger',45,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Baker','Dara',15,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('William','Lyle',10,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Morgan','Ray',17,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Wilkins','Kelly',1,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Wright','Illana',34,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Merrill','Jasmine',9,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Kent','Ursa',22,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Rowland','Hiram',21,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Norton','Perry',40,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Pratt','Eliana',81,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Randall','Abraham',70,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Campbell','Alice',98,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Gardner','Armand',38,1,(SELECT nCategorie FROM categorie WHERE nom = 'temoins'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Burns','Herman',63,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Hubbard','Upton',28,1,(SELECT nCategorie FROM categorie WHERE nom = 'temoins'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Sullivan','Zelenia',98,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Rodriquez','Lewis',2,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Nieves','Caira',29,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Gardner','Angelica',26,1,(SELECT nCategorie FROM categorie WHERE nom = 'temoins'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Chan','Kaseem',98,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Walker','Boris',31,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Morgan','Eliana',84,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Hogan','Melanie',63,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Sosa','Rhoda',74,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Andrews','Joelle',84,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Hurley','Guinevere',74,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Sargent','Mari',95,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Love','Geraldine',94,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Tyson','Illiana',11,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Gallegos','Samson',34,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Ware','Karly',83,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Richard','Brittany',45,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Hodges','Bianca',91,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Eaton','Ezra',79,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Nash','Demetria',4,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Mcleod','Hyatt',76,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Cortez','Tatyana',64,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Stevenson','Mariam',82,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Raymond','Harrison',18,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Vance','Mechelle',57,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Riggs','Imogene',30,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Fletcher','Levi',66,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Bowen','Signe',95,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Avery','Tamekah',71,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Mills','Cairo',39,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Shannon','Xanthus',94,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Hicks','Brady',23,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Velez','Baxter',69,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Palmer','Abbot',45,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Mccarthy','Bianca',26,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Randall','Mari',37,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Goodwin','Benjamin',99,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Petty','Eric',89,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Haynes','Catherine',50,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Herring','Basil',7,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('England','Mia',16,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('White','Oliver',89,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Wooten','Maile',36,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Wells','Ivana',22,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Weeks','Jessica',55,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Potter','Avye',16,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Powers','Lee',10,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Dean','Sopoline',67,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Burks','Wanda',41,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Brooks','Rana',29,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Bowen','Blossom',41,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Paul','Yvonne',76,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Rivera','Lacy',78,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Armstrong','Ina',58,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Mcfadden','Brynne',54,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Cabrera','Lani',33,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Todd','Jin',33,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Shaffer','Skyler',38,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Carroll','Ray',78,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Beck','Holmes',47,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Olson','Berk',34,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Watson','Austin',65,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Weber','Blake',5,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Dillard','Byron',51,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Aguilar','Salvador',28,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Contreras','Jason',97,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Alexander','Lois',69,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Wilkinson','Drew',87,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Holden','Ignatius',65,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Silva','Riley',42,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Weaver','Casey',7,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Calhoun','Stacey',87,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Robertson','Alexa',30,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Gibson','Kenneth',33,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Vang','Jana',70,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Strong','Leandra',96,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Salas','Aiko',59,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Reeves','Noble',70,1,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Robinson','Adena',78,1,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));

-- mariage 2
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Auchan','Stephanie',22,2,(SELECT nCategorie FROM categorie WHERE nom = 'maries'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Carrefour','Pierre',27,2,(SELECT nCategorie FROM categorie WHERE nom = 'maries'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Dunlap','Forrest',34,2,(SELECT nCategorie FROM categorie WHERE nom = 'temoins'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Bullock','Ivan',29,2,(SELECT nCategorie FROM categorie WHERE nom = 'temoins'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Garcia','Aladdin',37,2,(SELECT nCategorie FROM categorie WHERE nom = 'temoins'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Caldwell','Leo',33,2,(SELECT nCategorie FROM categorie WHERE nom = 'temoins'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Pierce','Kyla',34,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Wiggins','Gregory',35,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Wiggins','Davis',5,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Miles','Prescott',77,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Hewitt','Rae',66,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Barrera','Moses',33,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille mariee'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Peck','John',29,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Yates','Charlotte',27,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Peck','Cassandra',3,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Ferrell','Hadley',14,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Griffin','Demetria',38,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Wolf','Vivien',19,2,(SELECT nCategorie FROM categorie WHERE nom = 'famille marie'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Johnston','Hilary',38,2,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Hubbard','Margaret',93,2,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Yang','Zia',64,2,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Rogers','Eugenia',32,2,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Sawyer','Nathaniel',71,2,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Perry','Benjamin',48,2,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Mason','Hadley',24,2,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Reyes','Daquan',63,2,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));
INSERT INTO invite (nom,prenom,age,nMariage,nCategorie) VALUES ('Goodwin','Edan',82,2,(SELECT nCategorie FROM categorie WHERE nom = 'amis'));







-- Insert mariages 

INSERT INTO mariage (nom, nMarie, nMariee) VALUES ('Le Coq - Le Boeuf',
    (SELECT nInvite FROM invite WHERE nom = 'Le Coq' AND prenom = 'Martin'),
    (SELECT nInvite FROM invite WHERE nom = 'Le Boeuf' AND prenom = 'Christine')
);
INSERT INTO mariage (nom, nMarie, nMariee) VALUES ('Carrefour - Auchan',
    (SELECT nInvite FROM invite WHERE nom = 'Carrefour' AND prenom = 'Pierre'),
    (SELECT nInvite FROM invite WHERE nom = 'Auchan' AND prenom = 'Stephanie')
);


-- Insert adore

-- mariage 1
INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Sullivan' AND prenom = 'Zelenia'),
    (SELECT nInvite FROM invite WHERE nom = 'Chan' AND prenom = 'Kaseem'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Richard' AND prenom = 'Brittany'),
    (SELECT nInvite FROM invite WHERE nom = 'Herring' AND prenom = 'Basil'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Richard' AND prenom = 'Brittany'),
    (SELECT nInvite FROM invite WHERE nom = 'Tyson' AND prenom = 'Illiana'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Richard' AND prenom = 'Brittany'),
    (SELECT nInvite FROM invite WHERE nom = 'Mccarthy' AND prenom = 'Bianca'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Mccarthy' AND prenom = 'Bianca'),
    (SELECT nInvite FROM invite WHERE nom = 'Herring' AND prenom = 'Basil'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Mccarthy' AND prenom = 'Bianca'),
    (SELECT nInvite FROM invite WHERE nom = 'Tyson' AND prenom = 'Illiana'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Todd' AND prenom = 'Jin'),
    (SELECT nInvite FROM invite WHERE nom = 'Powers' AND prenom = 'Lee'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Todd' AND prenom = 'Jin'),
    (SELECT nInvite FROM invite WHERE nom = 'Olson' AND prenom = 'Berk'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Aguilar' AND prenom = 'Salvador'),
    (SELECT nInvite FROM invite WHERE nom = 'Weaver' AND prenom = 'Casey'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Gibson' AND prenom = 'Kenneth'),
    (SELECT nInvite FROM invite WHERE nom = 'Weaver' AND prenom = 'Casey'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Aguilar' AND prenom = 'Salvador'),
    (SELECT nInvite FROM invite WHERE nom = 'Gibson' AND prenom = 'Kenneth'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Bowman' AND prenom = 'Tiger'),
    (SELECT nInvite FROM invite WHERE nom = 'Sloan' AND prenom = 'Zeus'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Norton' AND prenom = 'Perry'),
    (SELECT nInvite FROM invite WHERE nom = 'Sloan' AND prenom = 'Zeus'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Bowman' AND prenom = 'Tiger'),
    (SELECT nInvite FROM invite WHERE nom = 'Baker' AND prenom = 'Dara'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Norton' AND prenom = 'Perry'),
    (SELECT nInvite FROM invite WHERE nom = 'Baker' AND prenom = 'Dara'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Bowman' AND prenom = 'Tiger'),
    (SELECT nInvite FROM invite WHERE nom = 'William' AND prenom = 'Lyle'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Norton' AND prenom = 'Perry'),
    (SELECT nInvite FROM invite WHERE nom = 'William' AND prenom = 'Lyle'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Walker' AND prenom = 'Boris'),
    (SELECT nInvite FROM invite WHERE nom = 'Rodriquez' AND prenom = 'Lewis'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Nieves' AND prenom = 'Caira'),
    (SELECT nInvite FROM invite WHERE nom = 'Rodriquez' AND prenom = 'Lewis'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Nieves' AND prenom = 'Caira'),
    (SELECT nInvite FROM invite WHERE nom = 'Walker' AND prenom = 'Boris'));

-- mariage 2
INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Wiggins' AND prenom = 'Gregory'),
    (SELECT nInvite FROM invite WHERE nom = 'Wiggins' AND prenom = 'Davis'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Pierce' AND prenom = 'Kyla'),
    (SELECT nInvite FROM invite WHERE nom = 'Wiggins' AND prenom = 'Davis'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Peck' AND prenom = 'John'),
    (SELECT nInvite FROM invite WHERE nom = 'Peck' AND prenom = 'Cassandra'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Yates' AND prenom = 'Charlotte'),
    (SELECT nInvite FROM invite WHERE nom = 'Peck' AND prenom = 'Cassandra'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Johnston' AND prenom = 'Hilary'),
    (SELECT nInvite FROM invite WHERE nom = 'Hubbard' AND prenom = 'Margaret'));

INSERT INTO adore (nInvite, inviteAdore) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Yang' AND prenom = 'Zia'),
    (SELECT nInvite FROM invite WHERE nom = 'Rogers' AND prenom = 'Eugenia'));


	
	
	
-- Insert deteste


-- mariage 1
INSERT INTO deteste (nInvite, inviteDeteste) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Armstrong' AND prenom = 'Ina'),
    (SELECT nInvite FROM invite WHERE nom = 'Mcfadden' AND prenom = 'Brynne'));

INSERT INTO deteste (nInvite, inviteDeteste) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Mcfadden' AND prenom = 'Brynne'),
    (SELECT nInvite FROM invite WHERE nom = 'Cabrera' AND prenom = 'Lani'));

INSERT INTO deteste (nInvite, inviteDeteste) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Mills' AND prenom = 'Cairo'),
    (SELECT nInvite FROM invite WHERE nom = 'Shannon' AND prenom = 'Xanthus'));

INSERT INTO deteste (nInvite, inviteDeteste) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Haynes' AND prenom = 'Catherine'),
    (SELECT nInvite FROM invite WHERE nom = 'Herring' AND prenom = 'Basil'));


	
-- mariage 2
INSERT INTO deteste (nInvite, inviteDeteste) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Perry' AND prenom = 'Benjamin'),
    (SELECT nInvite FROM invite WHERE nom = 'Mason' AND prenom = 'Hadley'));

INSERT INTO deteste (nInvite, inviteDeteste) VALUES (
    (SELECT nInvite FROM invite WHERE nom = 'Reyes' AND prenom = 'Daquan'),
    (SELECT nInvite FROM invite WHERE nom = 'Goodwin' AND prenom = 'Edan'));
