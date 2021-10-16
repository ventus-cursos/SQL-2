--select * from Ciudad

declare @ciudad table (id int, nombre varchar(max), idestado int, activo bit)
insert into @ciudad (id, nombre, idestado, activo)
EXECUTE ciudadlist

select * from @ciudad
