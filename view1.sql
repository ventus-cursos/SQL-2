drop view LastOrders
go

create view LastOrders
as
    SELECT TOP 20 id,idcliente,FechaOrden,Total,Activo
    FROM Orden
    ORDER BY FechaOrden DESC
GO

select * from lastorders