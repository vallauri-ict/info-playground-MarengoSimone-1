/* Le città da cui partono voli per Roma in ordine alfabetico */
SELECT DISTINCT v.CittaPart 
FROM Volo as v 
WHERE v.CittaArr = 'Roma' 
ORDER BY v.CittaPart

/* Città con aeroporto con numero di piste non noto */
SELECT DISTINCT a.Citta
FROM Aeroporto as a
WHERE a.NumPiste IS NULL

/* Per ogni volo Misto (sia merci che passeggeri): codice volo e dati di trasporto */
SELECT v.IdVolo, a.QtaMerci, a.NumPasseggeri
FROM Volo v, Aereo a
WHERE a.TipoAereo = v.TipoAereo AND a.QtaMerci > 0 AND a.NumPasseggeri > 0
