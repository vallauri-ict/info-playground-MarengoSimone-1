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

/* Il nome dei musei di Londra che hanno solo opere di Tiziano */
SELECT m.NomeMuseo
FROM Musei m
WHERE m.Citta = 'Londra'
AND EXISTS (SELECT * FROM Opere o WHERE O.NomeA ='Tiziano' AND o.NomeMuseo = m.NomeMuseo)

/* Per ogni artista, il suo nome e il numero di opere presenti alla Galleria degli Uffizi */
SELECT o.NomeA, count(*) as NumeroOpere
FROM Opere o
WHERE o.NomeMuseo = 'Galleria degli Uffizi'

/* I musei che conservano almeno 20 opere di artisti italiani */
SELECT DISTINCT o.NomeMuseo
FROM Opere o, Artisti a
WHERE o.NomeA = a.NomeA
AND a.Nazionalita = 'ITA' 
HAVING COUNT(*)>19

/* Titolo dell'opera e nome dell'artista per ogni opera di un artista italiano senza personaggio */
SELECT a.NomeA, o.Titolo
FROM Artisti a, Opere o, Personaggi p
WHERE a.Nazionalita='IT'
AND p.Personaggio=NULL
AND p.Codice=o.Codice 
AND a.NomeA=o.NomeA