ALTER FUNCTION FechaUltimaOrden(@idcliente int)
    RETURNS datetime
AS
BEGIN
    DECLARE @fecha datetime
    SELECT @fecha = MAX(FechaOrden)
      FROM Orden
     WHERE IDCliente = @idcliente
    RETURN @fecha
END
GO

DECLARE @f datetime
SET @f = dbo.FechaUltimaOrden(101)
print (@f)
SET @f = dbo.FechaUltimaOrden(100)
print (@f)
