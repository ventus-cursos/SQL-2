declare @ultimaFecha datetime
declare @primeraFecha datetime

set @ultimaFecha = (select max(OrderDate) from Orders)
select @ultimaFecha AS UltimaFecha

select @ultimaFecha = (select max(OrderDate) from Orders)

select @ultimaFecha = max(OrderDate), @primeraFecha = min(OrderDate)
from Orders

select @ultimaFecha, @primeraFecha

print CONVERT(varchar, @ultimaFecha) + CONVERT(varchar, @primeraFecha)

print (@ultimaFecha)

select @ultimaFecha

select * from Orden
where FechaOrden = @ultimaFecha
GO
