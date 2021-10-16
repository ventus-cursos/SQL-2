set nocount ON

declare @haymas bit
set @haymas = 1
declare @idestado int
set @idestado = (select min(id) from estado)

WHILE @haymas = 1
BEGIN
    select nombre from Estado where id = @idestado
    select convert(varchar, count(*)) + ' ciudades' from ciudad where IDEstado = @idestado
    select id,Nombre from Ciudad where IDEstado = @idestado

    select @idestado = min(id)
    from Estado
    where id > @idestado

    set @haymas = CASE WHEN @idestado IS NULL THEN 0 ELSE 1 END
END
