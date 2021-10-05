/* INSERT DEI DATI */
INSERT INTO Automobile(Targa,Marca,Cilindrata,Potenza,CodF,CodAss) VALUES 
('FD567LS','BMW',3000,230,1,1);
INSERT INTO Automobile(Targa,Marca,Cilindrata,Potenza,CodF,CodAss) VALUES 
('GA334WE','Mercedes',280,200,1,2);
INSERT INTO Automobile(Targa,Marca,Cilindrata,Potenza,CodF,CodAss) VALUES 
('EH578OP','Toyota',1600,150,2,2);
INSERT INTO Automobile(Targa,Marca,Cilindrata,Potenza,CodF,CodAss) VALUES 
('BZ168KA','Fiat',1200,100,3,3);

INSERT INTO Proprietari(Nome,Residenza) VALUES ('Paolo Damilano', 'Alba');
INSERT INTO Proprietari(Nome,Residenza) VALUES ('Andrea Barbero', 'Fossano');
INSERT INTO Proprietari(Nome,Residenza) VALUES ('Marco Rossi', 'Cuneo');

INSERT INTO Assicurazioni(Nome,Sede) VALUES ('SARA', 'Alba');
INSERT INTO Assicurazioni(Nome,Sede) VALUES ('INASS', 'Torino');
INSERT INTO Assicurazioni(Nome,Sede) VALUES ('ASSOITA', 'Roma');

INSERT INTO Sinistro(Localita,DataSinistro) VALUES ('Torino','20/01/2000');
INSERT INTO Sinistro(Localita,DataSinistro) VALUES ('San Damiano','18/07/2000');
INSERT INTO Sinistro(Localita,DataSinistro) VALUES ('Roma','11/11/2001');

INSERT INTO AutoCoinvolte(CodS,Targa,ImportoDanno) VALUES ('4','BZ168KA',200);
INSERT INTO AutoCoinvolte(CodS,Targa,ImportoDanno) VALUES ('7','FD567LS',800);
INSERT INTO AutoCoinvolte(CodS,Targa,ImportoDanno) VALUES ('5','EH578OP',90);
INSERT INTO AutoCoinvolte(CodS,Targa,ImportoDanno) VALUES ('6','FD567LS',3000);
