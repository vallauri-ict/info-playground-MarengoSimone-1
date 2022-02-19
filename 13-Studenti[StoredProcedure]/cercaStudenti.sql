CREATE PROCEDURE [dbo].[cercaStudenti]
	@inputClasse VARCHAR(50),
	@outputNome VARCHAR(50) OUTPUT,
	@outputCognome VARCHAR(50) OUTPUT,
	@outputTelefono VARCHAR(10) OUTPUT
AS
	SELECT * FROM Studenti s WHERE s.Classe = @inputClasse
	
	SELECT @outputNome = s.Nome FROM Studenti s WHERE s.Classe = @inputClasse ORDER BY s.Eta DESC
	SELECT @outputCognome = s.Cognome FROM Studenti s WHERE s.Classe = @inputClasse ORDER BY s.Eta DESC
	SELECT @outputTelefono = s.Telefono FROM Studenti s WHERE s.Classe = @inputClasse ORDER BY s.Eta DESC
RETURN 0