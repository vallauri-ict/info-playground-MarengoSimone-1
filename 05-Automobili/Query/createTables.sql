CREATE TABLE Automobile(
	Targa varchar(7) PRIMARY KEY NOT NULL,
	Marca varchar(20) NOT NULL,
	Cilindrata int NOT NULL,
	Potenza int NOT NULL,
	CodF int NOT NULL,
	CodAss int NOT NULL,
	CONSTRAINT [FK_Automobile_ToTable] FOREIGN KEY ([CodF]) REFERENCES [dbo].[Proprietari] ([CodF]),
    CONSTRAINT [FK_Automobile_ToTable_1] FOREIGN KEY ([CodAss]) REFERENCES [dbo].[Assicurazioni] ([CodAss])
);

CREATE TABLE Proprietari(
	CodF int PRIMARY KEY IDENTITY(1,1),
	Nome varchar(30) NOT NULL,
	Residenza varchar(50) NOT NULL
);

CREATE TABLE Assicurazioni(
	CodAss int PRIMARY KEY IDENTITY(1,1),
	Nome varchar(30) NOT NULL,
	Sede varchar(30) NOT NULL
);

CREATE TABLE Sinistro(
	CodS int PRIMARY KEY IDENTITY(1,1),
	Localita varchar(50) NOT NULL,
	DataSinistro date NOT NULL
);

CREATE TABLE AutoCoinvolte(
	CodS int NOT NULL PRIMARY KEY,
	Targa varchar(7) NOT NULL,
	ImportoDanno int NOT NULL,
	CONSTRAINT [FK_AutoCoinvolte_ToTable] FOREIGN KEY ([CodS]) REFERENCES [dbo].[Sinistro] ([CodS]),
	CONSTRAINT [FK_AutoCoinvolte1_ToTable] FOREIGN KEY ([Targa]) REFERENCES [dbo].[Automobile] ([Targa]),
);

