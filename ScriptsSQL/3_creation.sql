-- Création des tables pour RapiJob

--============ ENTITES FORTES ========================
CREATE TABLE NomEntiteForte (
    personID SERIAL UNIQUE NOT NULL,
    email VARCHAR UNIQUE NOT NULL, -- was email
    firstName VARCHAR NOT NULL,
    lastName VARCHAR NOT NULL,
    logoURL VARCHAR NOT NULL,
    gender gender NOT NULL, -- TODO: Valider que restreindre la valeur a une liste de choix est bien en 5FN malgre que c'est un string.
    CONSTRAINT PK01_Person PRIMARY KEY (personID)
);

--================ TABLES DE LIAISON ======================

CREATE TABLE NomTableLiaison (
    personID SERIAL UNIQUE NOT NULL,
    employeeID SERIAL UNIQUE NOT NULL,
    CONSTRAINT PK01_PersonEmployee PRIMARY KEY (personID, employeeID),
    CONSTRAINT FK01_PersonEmployee FOREIGN KEY (personID) REFERENCES Person(personID),
    CONSTRAINT FK02_PersonEmployee FOREIGN KEY (employeeID) REFERENCES Employee(employeeID)
);
