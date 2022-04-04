/* Query 1 */
SELECT a.nome, v.costo, a.datiAuto, v.ora
FROM Viaggio v, Autisti a
WHERE v.IdAutista = a.id_Autista
AND v.cittaArrivo='Alba'
AND v.cittaPartenza='Savigliano'
AND v.data = '2022-04-02'
AND v.isPrenotabile = 1
order by v.ora

/* Query 2 */
SELECT pas.email, pas.cognome, pas.nome
FROM Prenotazioni p, Passeggeri pas
WHERE p.stato = 1
AND p.Id_Utente = pas.Id_Utente

/* Query 3 */
SELECT *
FROM Passeggeri p, FeedbackAutista fp, Viaggio v, Prenotazioni pren
WHERE p.Id_Utente = fp.idUtente
AND v.id_Viaggio = pren.id_Viaggio
AND pren.Id_Utente = p.Id_Utente
AND v.id_Viaggio = 1
AND 1 < (SELECT AVG(fa.voto) FROM FeedbackAutista fa WHERE fa.idUtente = p.Id_Utente)
