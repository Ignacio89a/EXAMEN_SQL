spool c:\DocumentsandSetting\Administrateur\bureau

DROP TABLE abonnes;
DROP TABLE telephones;
DROP TABLE appels;

create table abonnes(
IdAbonne NUMBER (10),
nom VARCHAR2 (50) CONSTRAINT abonnes_nom_nn NOT NULL,
adresse VARCHAR2 (100) CONSTRAINT abonnes_adresse_nn NOT NULL,
courriel VARCHAR2 (100),

CONSTRAINT abonnes_IdAbonne_pk PRIMARY KEY (IdAbonne),
CONSTRAINT abonnes_adresse_u UNIQUE (adresse)

);


create table telephones(
numeroTel CHAR (7),
marque VARCHAR2 (60) CONSTRAINT telephones_marque_nn NOT NULL,
dateActivation DATE CONSTRAINT telephones_dateActivation_nn NOT NULL,
status VARCHAR (1) CONSTRAINT telephones_status_nn  NOT NULL,
idAbonne NUMBER (5) CONSTRAINT telephones_idAbonne_nn NOT NULL,

CONSTRAINT telephones_numeroTel_pk PRIMARY KEY (numeroTel),
CONSTRAINT telephones_numeroTel_ck CHECK (numeroTel BETWEEN '0000000' AND '9999999'),
CONSTRAINT telephones_idAbonne_fk foreign KEY (idAbonne) REFERENCES abonnes (idAbonne),
CONSTRAINT telephone_status_ck CHECK (UPPER(status) IN ('Y', 'N'))
);

create table  appels(
idAppel NUMBER (6),
numeroTel CHAR(7) CONSTRAINT appels_numeroTel_nn NOT NULL,
dateDebut DATE CONSTRAINT appels_dateDebut_nn NOT NULL,
dateFin DATE CONSTRAINT appels_dateFin_nn NOT NULL,

CONSTRAINT appels_idAppel_pk PRIMARY KEY (idAppel),
CONSTRAINT appels_numeroTel_fk foreign KEY (numeroTel)
          references telephones(numeroTel),
CONSTRAINT appels_dateFin_ck CHECK (dateFin >= dateDebut)

 spool off;

