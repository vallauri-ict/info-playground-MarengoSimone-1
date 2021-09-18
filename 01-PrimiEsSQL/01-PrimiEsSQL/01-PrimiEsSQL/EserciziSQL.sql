/* 1 Selezionare il nome e l'età e il salario degli impiegati con piu' di 50 anni */
SELECT nome,eta,salario FROM Impiegato WHERE eta>50;

/* 2 Le informazioni degli acquisti di item = 2 */
SELECT * FROM Acquisto WHERE item=2

/* 3 nome,titolo e salario dei programmatori con salario > 1400 */
SELECT nome,titolo,salario FROM Impiegato WHERE salario>1400 AND titolo='Programmatore'

/* 4 nome di tutti i Programmatori e analisti */
SELECT nome FROM Impiegato WHERE titolo = 'Programmatore' OR titolo = 'Analista'

/* 5 Le diverse età degli impiegati */
SELECT DISTINCT eta FROM Impiegato /* DISTINCT non ripete dati uguali*/

/* 6 Stipendio medio degli impiegati */
SELECT AVG(salario) FROM Impiegato

/* 7 Tutti i dati di impiegato ordinati per salario dal maggiore al minore */
SELECT * FROM Impiegato ORDER BY salario DESC /* DESC = ordine discendente */

/* 8 Tutti i dati di impiegato ordinati per salario e per età dal maggiore al minore*/
SELECT * FROM Impiegato ORDER BY salario DESC, eta DESC

/* 9 Tutti i dati degli impiegati di Marta, Fabio e Ivan */
SELECT * FROM Impiegato WHERE nome IN ('Marta','Fabio','Ivan')

/* 10 Tutti i dati degli impiegati tranne Marta, Fabio e Ivan */ 
SELECT * FROM Impiegato WHERE nome NOT IN ('Marta','Fabio','Ivan')

/* 11 Tutti i dati degli impiegati con età compresa tra 20 e 30 */
SELECT * FROM Impiegato WHERE eta BETWEEN 20 AND 30 /* OPPURE eta>=20 and eta <=30 */

/* 12 Per ogni acquisto il nome del cliente e il prezzo del prodotto*/
SELECT c.nome,a.prezzo FROM Acquisto a,Cliente c WHERE a.idCliente = c.IdCliente

/* */