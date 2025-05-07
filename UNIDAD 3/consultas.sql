
-- EJEMPLOS DE PARAMETROS DE SALIDA
use empresagrande

go

CREATE PROCEDURE dbo.mathtutor
@m1 SMALLINT
@m2 SMALLINT
@results SMALLINT OUTPUT
AS
    SET @results = @m1 * @m2

GO

DECLARE @answer SMALLINT
DECLARE @f SMALLINT
set @f=8
EXECUTE mathtutor @f, 10, @answer output
SELECT 'The result is;', @answer

GO



