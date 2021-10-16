ALTER FUNCTION OrdenesCliente (@idCliente int)
    RETURNS TABLE
AS
    RETURN
        SELECT *
          FROM Orden
         WHERE IDCliente = @idcliente
GO

select * from dbo.OrdenesCliente(101)
