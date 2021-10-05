/* UPDATE DEI DATI */
UPDATE Automobile 
SET Potenza = 210, CodAss = 4
WHERE Targa = 'GA334WE'

UPDATE Assicurazioni
SET Nome = 'AssiIta'
WHERE CodAss = 3

UPDATE AutoCoinvolte 
SET ImportoDanno = 1800
WHERE CodS = 6