/* 1- Targa e Marca delle Auto di cilindrata superiore a 2000 cc o di potenza superiore a 120 CV */
SELECT a.Targa, a.Marca
FROM Automobile a
WHERE a.Cilindrata > 2000 OR a.Potenza > 120

/* 2- Nome del proprietario e Targa delle Auto di cilindrata superiore a 2000 cc oppure di potenza
superiore a 120 CV */
SELECT p.Nome, a.Targa
FROM Automobile a, Proprietari p
WHERE a.CodF = p.CodF
AND (a.Cilindrata > 2000 OR a.Potenza > 120)

/* 3- Targa e Nome del proprietario delle Auto di cilindrata superiore a 2000 cc oppure di potenza
superiore a 120 CV, assicurate presso la “SARA” */
SELECT a.Targa, p.Nome
FROM Automobile a, Proprietari p, Assicurazioni as ass
WHERE a.CodAss = ass.CodAss
AND a.CodF = p.CodF
AND (a.Cilindrata > 2000 OR a.Potenza > 120)
AND ass.Nome = 'SARA'

/* 4- Targa e Nome del proprietario delle Auto assicurate presso la “SARA” e coinvolte in sinistri il
20/01/02 */
SELECT a.Targa, p.Nome
FROM Automobile a, Proprietari p, Assicurazioni as ass, Sinistro s, AutoCoinvolte as ac
WHERE a.CodAss = ass.CodAss AND a.CodF = p.CodF AND s.CodS = ac.CodS
AND ass.Nome = 'SARA' AND s.DataSinistro = '20020120' AND a.Targa = ac.Targa

/* 5- Per ciascuna Assicurazione, il nome, la sede ed il numero di auto assicurate */
SELECT ass.Nome, ass.Sede, COUNT(*) as NumeroAutoAssicurate
FROM Assicurazioni ass, Automobile a
WHERE ass.CodAss = a.CodAss
GROUP BY ass.Nome, ass.Sede
ORDER BY ass.Nome

/* 6- Per ciascuna auto “Fiat”, la targa dell’auto ed il numero di sinistri in cui è stata coinvolta */
SELECT a.Targa, COUNT(*) as NumeroSinistri
FROM AutoCoinvolte ac, Automobile a
WHERE ac.Targa = a.Targa
AND a.Marca = 'Fiat'
GROUP BY a.Targa
ORDER BY a.Targa

/* 7- Per ciascuna auto coinvolta in più di un sinistro, la targa dell’auto, il nome dell’ Assicurazione
ed il totale dei danni riportati */
SELECT a.Targa, ass.Nome, SUM(ac.ImportoDanno) as ImportoTotale
FROM AutoCoinvolte ac, Assicurazioni ass, Automobile a
WHERE ac.Targa = a.Targa AND ass.CodAss = a.CodAss
GROUP BY a.Targa, ass.Nome
HAVING COUNT(*) > 1

/* 8- CodF e Nome di coloro che possiedono più di un’auto */
SELECT a.CodF, p.Nome
FROM Automobile a, Proprietari p
WHERE a.CodF =p.CodF
GROUP BY a.CodF, p.Nome
HAVING COUNT(*) > 0

/*9- La targa delle auto che non sono state coinvolte in sinistri dopo il 20/01/01 */
SELECT a.Targa
FROM Automobile a
WHERE NOT EXISTS (SELECT * FROM AutoCoinvolte ac, Sinistro s WHERE ac.CodS = s.CodS 
					AND a.Targa = ac.Targa 
					AND s.DataSinistro > '20010120')

/* 10- Il codice dei sinistri in cui non sono state coinvolte auto con cilindrata inferiore a 2000 cc */
SELECT s.CodS
FROM Sinistro s
WHERE EXISTS (SELECT 1 FROM AutoCoinvolte ac, Automobile a 
WHERE ac.CodS = s.CodS AND a.Targa = ac.Targa AND a.Cilindrata < 2000)


