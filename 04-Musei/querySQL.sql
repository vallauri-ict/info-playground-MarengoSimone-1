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