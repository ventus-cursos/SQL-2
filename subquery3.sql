select * from Orden
where FechaOrden = (select max(FechaOrden) from Orden)
