CREATE TABLE Aeroporto (
	Citta varchar(30) PRIMARY KEY NOT NULL,
	Nazione varchar(3) NOT NULL,
	NumPiste int NOT NULL
);

CREATE TABLE Volo (
	IdVolo int PRIMARY KEY NOT NULL IDENTITY,
	GiornoSett varchar(20) NOT NULL,
	CittaPart varchar(30) NOT NULL,
	OraPart date NOT NULL,
	CittaArr varchar(30) NOT NULL,
	OraArr date NOT NULL,
	TipoAereo varchar(50)
);

CREATE TABLE Aereo (
	TipoAereo varchar(50) PRIMARY KEY NOT NULL,
	NumPasseggeri int NOT NULL,
	QtaMerci int
);