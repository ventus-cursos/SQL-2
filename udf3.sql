ALTER FUNCTION ClientesCompradores ()
    returns @T table (idCliente int)
AS
BEGIN
    DECLARE @max int

    SELECT @max = max(n)
      FROM
       (SELECT IDCliente, count(*) AS n
          FROM Orden
         GROUP BY idcliente) AS t

    INSERT INTO @T (idCliente)
    SELECT IDCliente
      FROM Orden
     GROUP BY IDCliente
     HAVING COUNT(*) = @max

    RETURN
END
GO

select * from dbo.ClientesCompradores()
