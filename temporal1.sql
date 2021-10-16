SELECT TOP 20 *
into #ULTIMAS
FROM Orden
ORDER BY FechaOrden DESC

select * from #ultimas

drop table #ultimas
GO

CREATE TABLE #ultimas (
	[ID] [int] NOT NULL,
	[IDCliente] [int] NOT NULL,
	[FechaOrden] [datetime] NOT NULL,
	[Total] [money] NOT NULL,
	[Activo] [bit] NOT NULL,
)

insert into #ultimas (id,idcliente,FechaOrden,Total,Activo)
SELECT TOP 20 id,idcliente,FechaOrden,Total,Activo
FROM Orden
ORDER BY FechaOrden DESC

select * from #ultimas

drop table #ultimas
