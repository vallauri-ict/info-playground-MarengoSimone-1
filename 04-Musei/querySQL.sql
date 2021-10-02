/* Per ciascun museo di Londra il numero di opere di artisti italiani ivi conservate*/
SELECT m.NomeMuseo, count(*) as NumeroOpere
FROM Musei m, Artisti a, Opere o
WHERE a.NomeA = o.NomeA
AND m.NomeMuseo = o.NomeMuseo 
AND a.Nazionalita = 'ITA'
AND m.citta = 'Londra'
GROUP BY m.NomeMuseo

/* Il nome dei musei di Londra che non hanno opere di Tiziano */
SELECT m.NomeMuseo
FROM Musei m
WHERE m.Citta = 'Londra'
AND NOT EXISTS (SELECT * FROM Opere o WHERE O.NomeA ='Tiziano' AND o.NomeMuseo = m.NomeMuseo)

/* Versione 2
SELECT *
FROM Musei m
WHERE m.Citta = 'Londra'
AND 'Tiziano' NOT IN (SELECT o.NomeA FROM Opere o WHERE o.NomeMuseo = m.NomeMuseo)*/

/* Il nome dei musei di Londra che hanno solo opere di Tiziano */
SELECT m.NomeMuseo
FROM Musei m
WHERE m.Citta = 'Londra'
AND NOT EXISTS (SELECT * FROM Opere o WHERE O.NomeA <>'Tiziano' AND o.NomeMuseo = m.NomeMuseo)

/* Versione 2
SELECT *
FROM Musei m
WHERE m.Citta = 'Londra'
AND 'Tiziano' = ALL (SELECT o.NomeA FROM Opere o WHERE o.NomeMuseo = m.NomeMuseo)*/

/* Per ogni artista, il suo nome e il numero di opere presenti alla Galleria degli Uffizi */
SELECT o.NomeA, COUNT(*) AS NumeroOpere
FROM Opere o, Artisti a
WHERE a.NomeA = o.NomeA 
AND o.NomeMuseo = 'Museo degli Uffizi'
GROUP BY o.NomeA

/* I musei che conservano almeno 20 opere di artisti italiani */
SELECT o.NomeMuseo, COUNT(*) AS NumeroOpere
FROM Opere o, Artisti a
WHERE o.NomeA = a.NomeA
AND a.Nazionalita = 'ITA'
GROUP BY o.NomeMuseo
HAVING COUNT(*)>19

/* Titolo dell'opera e nome dell'artista per ogni opera di un artista italiano senza personaggio */
SELECT a.NomeA, o.Titolo
FROM Artisti a, Opere o
WHERE a.Nazionalita='IT'
AND a.NomeA=o.NomeA
AND NOT EXISTS(SELECT * FROM Personaggi p WHERE p.Codice=o.Codice)

/* Il nome dei musei di Londra che non hanno opere di artisti italiani, eccetto Tiziano */
SELECT m.NomeMuseo
FROM Musei m
WHERE  m.Citta='Londra'
AND NOT EXISTS(SELECT * FROM Opere o,Artisti a 
	WHERE a.Nazionalita='IT' OR o.NomeA<>'Tiziano' AND o.NomeMuseo=m.NomeMuseo)

/* Per ogni museo, il numero di opere divise per nazionalità dell'artista*/
SELECT o.NomeMuseo, a.Nazionalita, count(*) as NumeroOpere
FROM Opere o, Artisti a
WHERE o.NomeA = a.NomeA
GROUP BY a.Nazionalita, o.NomeMuseo
ORDER BY o.NomeMuseo

UPDATE Artisti
SET Nazionalita = 'ESP'
WHERE NomeA = 'Picasso'

DELETE FROM Artisti WHERE NomeA = 'Pol'